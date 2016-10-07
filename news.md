---
layout: page
title: News
permalink: /news
---

<table>
  {% for post in site.posts %}
  {% if post.categories contains 'news' %}
  <tr valign="top">
  <td>
      <h2>{{ post.title }}</h2>
<p>{{ post.date | date: '%B %d, %Y' }}</p>

          {{ post.excerpt }}
          {% if post.content contains site.excerpt_separator %}
          <p>

          <a class="btn btn-primary btn"
                style="color:white;text-decoration:none"
                href="{{ site.baseurl }}{{ post.url }}">
                Read more</a>
            </p>
          {% endif %}

  </td>
  </tr>
    {% endif %}
  {% endfor %}
</table>
