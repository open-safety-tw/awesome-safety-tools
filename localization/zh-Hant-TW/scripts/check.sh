#!/usr/bin/env bash
set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"
locale_root="$repo_root/localization/zh-Hant-TW"
manifest="$locale_root/sources.tsv"
expected_header=$'source_path\tlocalized_path\tsource_commit\tstatus\tlanguage_review\tdomain_review\tnotes'
allowed_statuses='not_started draft translated reviewed stale blocked'
errors=0

if [[ "$(head -n 1 "$manifest")" != "$expected_header" ]]; then
  echo "Unexpected sources.tsv header" >&2
  errors=$((errors + 1))
fi

while IFS=$'\t' read -r source_path localized_path source_commit status language_review domain_review notes; do
  if [[ "$source_path" == "source_path" || -z "$source_path" ]]; then
    continue
  fi

  if [[ ! -f "$repo_root/$source_path" ]]; then
    echo "Missing source file: $source_path" >&2
    errors=$((errors + 1))
  fi

  if [[ ! "$source_commit" =~ ^[0-9a-f]{40}$ ]] || ! git cat-file -e "$source_commit^{commit}" 2>/dev/null; then
    echo "Invalid source commit for $source_path: $source_commit" >&2
    errors=$((errors + 1))
  fi

  if [[ " $allowed_statuses " != *" $status "* ]]; then
    echo "Invalid status for $source_path: $status" >&2
    errors=$((errors + 1))
  fi

  if [[ "$status" != "not_started" && ! -f "$repo_root/$localized_path" ]]; then
    echo "Missing localized file for $source_path: $localized_path" >&2
    errors=$((errors + 1))
  fi

  if [[ "$status" == "translated" || "$status" == "reviewed" ]]; then
    if ! git diff --quiet "$source_commit"..HEAD -- "$source_path"; then
      echo "Source changed after recorded commit: $source_path" >&2
      errors=$((errors + 1))
    fi
  fi
done < "$manifest"

localized_readme="$repo_root/README.zh-Hant-TW.md"
if [[ -f "$localized_readme" ]]; then
  source_tools="$(grep -c '^\* \[' "$repo_root/README.md")"
  localized_tools="$(grep -c '^\* \[' "$localized_readme")"
  source_descriptions="$(grep -c '^  \* ' "$repo_root/README.md")"
  localized_descriptions="$(grep -c '^  \* ' "$localized_readme")"
  source_categories="$(grep -c '^## ' "$repo_root/README.md")"
  localized_categories="$(grep -c '^## ' "$localized_readme")"
  source_item_lines="$(grep '^\* \[' "$repo_root/README.md" | sed -E 's/[[:space:]]+\)/)/g; s/[[:space:]]+$//')"
  localized_item_lines="$(grep '^\* \[' "$localized_readme" | sed -E 's/[[:space:]]+\)/)/g; s/[[:space:]]+$//')"

  if [[ "$source_tools" != "$localized_tools" ]]; then
    echo "Tool count differs: source=$source_tools localized=$localized_tools" >&2
    errors=$((errors + 1))
  fi

  if [[ "$source_categories" != "$localized_categories" ]]; then
    echo "Category count differs: source=$source_categories localized=$localized_categories" >&2
    errors=$((errors + 1))
  fi

  if [[ "$source_descriptions" != "$localized_descriptions" ]]; then
    echo "Description count differs: source=$source_descriptions localized=$localized_descriptions" >&2
    errors=$((errors + 1))
  fi

  if [[ "$source_item_lines" != "$localized_item_lines" ]]; then
    echo "Tool names, order, or links differ from source" >&2
    errors=$((errors + 1))
  fi
fi

if [[ -f "$localized_readme" ]] && grep -nE 'TODO_TRANSLATION|機翻待校' "$localized_readme"; then
  echo "Unresolved translation marker found" >&2
  errors=$((errors + 1))
fi

if [[ "$errors" -ne 0 ]]; then
  echo "Localization checks failed with $errors error(s)" >&2
  exit 1
fi

echo "Localization checks passed"
