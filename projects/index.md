---
layout: default
title: Projects
---
Listed below are projects I have worked on.

{% assign projects = site.data.projects %}
{% for project in projects %}
* [{{ project[1].name }}](/projects/{{ project[0] }})
{% endfor %}

_This site is still under construction!_