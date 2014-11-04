---
layout: default
title: App Repository
permalink: /app-repository/
---

### Drobo5N apps

<div class="row">
  {% for post in site.posts %}
  {% assign repo = (site.data.repos | where: "name", post.appname | first) %}
  {% assign release = (site.data[repo.name] | where: "target_commitish", "master" | first) %}
  {% if release %}
  {% assign asset = (release.assets | first) %}
  <div class="col-xs-6 col-sm-3">
    <div class="well app">
      <p class="pull-right github-icon"><a title="Github project" href="{{ repo.html_url }}">{% include svg-icons/github-small.html %}</a></p>
      <h4><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></h4>
      {% if post.avatar %}<p class="text-center"><img class="img-circle" height="64" src="{{post.avatar}}" /></p>{% endif %}
      <p>{{ post.description }}</p>
      {% if asset.browser_download_url %}<p class="text-right"><a class="btn btn-success" href="{{ asset.browser_download_url }}">Download &raquo;</a></p>{% endif %}
    </div>
  </div>
  {% endif %}
  {% endfor %}
</div>

### DroboFS apps

<div class="row">
  {% for post in site.posts %}
  {% assign repo = (site.data.repos | where: "name", post.appname | first) %}
  {% assign release = (site.data[repo.name] | where: "target_commitish", "drobofs" | first) %}
  {% if release %}
  {% assign asset = (release.assets | first) %}
  <div class="col-xs-6 col-sm-3">
    <div class="well app">
      <p class="pull-right github-icon"><a title="Github project" href="{{ repo.html_url }}">{% include svg-icons/github-small.html %}</a></p>
      <h4><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></h4>
      {% if post.avatar %}<p class="text-center"><img class="img-circle" height="64" src="{{post.avatar}}" /></p>{% endif %}
      <p>{{ post.description }}</p>
      {% if asset.browser_download_url %}<p class="text-right"><a class="btn btn-success" href="{{ asset.browser_download_url }}">Download &raquo;</a></p>{% endif %}
    </div>
  </div>
  {% endif %}
  {% endfor %}
</div>
