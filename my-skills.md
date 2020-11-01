---
title: My Skills
---

{% for item in site.data.skills %}
- [{{ item.name }}]({{ item.link }})
{% endfor %}
