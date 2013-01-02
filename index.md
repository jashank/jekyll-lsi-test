---
layout: default
title: index
---

{% for post in site.posts limit:10 %}
- {{ post.date | date_to_string }} &raquo; [{{ post.title }}]({{ post.url }})
{% endfor %}
