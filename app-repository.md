---
layout: default
title: App Repository
permalink: /app-repository/
---

<div class="apps">
  {% assign sorted_posts = (site.posts | sort: 'shorttitle') %}
  {% for post in sorted_posts %}
    <article class="app">    
      <h4><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></h4>
      <div class="entry">
        {{ post.content | truncatewords:40}}
      </div>
      <a href="{{ site.baseurl }}{{ post.url }}" class="read-more">Read More</a>
    </article>
  {% endfor %}
</div>
