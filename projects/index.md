---
layout: default
title: Projects
---
Listed below are projects I have worked on.

{% assign projects = site.data.projects %}
{% for project in projects %}
{% assign id = project[0] %}
{% include project_item.html id=id %}
{% endfor %}

_This site is still under construction!_