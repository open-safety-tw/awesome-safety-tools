#!/usr/bin/env node

import fs from "node:fs";
import path from "node:path";
import process from "node:process";

const siteRoot = path.resolve(process.argv[2] ?? "_site");
const indexPath = path.join(siteRoot, "index.html");
const cssPath = path.join(siteRoot, "style.css");
const errors = [];

function expect(condition, message) {
  if (!condition) errors.push(message);
}

expect(fs.existsSync(indexPath), `missing rendered page: ${indexPath}`);
expect(fs.existsSync(cssPath), `missing rendered stylesheet: ${cssPath}`);

if (errors.length === 0) {
  const html = fs.readFileSync(indexPath, "utf8");
  const css = fs.readFileSync(cssPath, "utf8");

  expect(html.includes('<html lang="zh-Hant-TW">'), "missing Traditional Chinese language declaration");
  expect(html.includes("開放安全工具地圖"), "missing page title");
  expect(html.includes("113</dt>"), "missing tool count");
  expect(html.includes("評估起點，不是採用背書"), "missing adoption disclaimer");
  expect(html.includes("mashbean 維護的非官方台灣繁體中文社群版本"), "missing unofficial-version disclosure");
  expect(html.includes('rel="canonical"'), "missing canonical URL");
  expect(html.includes('href="https://roost.mashbean.net/"'), "missing ROOST localization hub link");
  expect((html.match(/<h2/g) ?? []).length === 14, "expected 14 rendered tool categories");
  expect((html.match(/<li>/g) ?? []).length >= 113, "expected at least 113 rendered tool entries");
  expect(!html.includes("{%"), "unprocessed Liquid tag remains");
  expect(css.includes(":focus-visible"), "missing keyboard focus style");
  expect(css.includes("@media (max-width: 620px)"), "missing mobile layout");
  expect(css.includes("@media (prefers-reduced-motion: reduce)"), "missing reduced-motion handling");
}

if (errors.length > 0) {
  for (const error of errors) console.error(error);
  console.error(`Rendered site checks failed with ${errors.length} error(s)`);
  process.exit(1);
}

console.log("Rendered Traditional Chinese tool directory checks passed");
