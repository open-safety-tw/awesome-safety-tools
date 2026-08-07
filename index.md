---
layout: zh-Hant-TW
permalink: /
---

{% capture tools_markdown %}{% include_relative README.zh-Hant-TW.md %}{% endcapture %}
{% assign tools_directory = tools_markdown | remove_first: '# awesome-safety-tools' %}
{{ tools_directory | markdownify }}
