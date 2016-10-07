---
layout: page
title: Time schedule
permalink: /schedule
---

# Project schedule

<img src="{{ site.url }}/assets/img/project_schedule.png" alt="Project schedule"
width="600px">

The official kick-off meeting is in August 2017,
coinciding with the the [Building Simulation 2017 conference](http://buildingsimulation2017.org/).


# Upcoming meetings and presentations

<table>
  {% for post in site.posts %}
  {% if post.date >= site.time %}
  {% if post.categories contains 'presentation' or 'meeting' %}
  <tr valign="top">
  <td>
  <p>{{ post.date | date: '%B %d, %Y' }}</p>
  </td>
  <td>
  <p>
  {{ post.title }}
  </p>
  {% if post.type == 'conference_presentation' %}
  <p>
  <a href="{{ post.link }}">Link to conference.</a>
  </p>
  {% endif %}
  </td>
    <td>
    <a class="btn btn-primary btn"
                style="color:white;text-decoration:none"
                href="{{ site.baseurl }}{{ post.url }}">
                Read more</a>
    </td>
    </tr>
  {% endif %}
  {% endif %}
  {% endfor %}
</table>

# Past meetings and presentations

<table>
  {% for post in site.posts %}
  {% if post.date < site.time %}
    {% if post.categories contains 'presentation' or 'meeting' %}
    <tr valign="top">
    <td>
    <p>{{ post.date | date: '%B %d, %Y' }}</p>
    </td>
    <td>
    <p>
    {{ post.title }}
    </p>
    {% if post.type == 'conference_presentation' %}
    <p>
    <a href="{{ post.link }}">Link to conference.</a>
    </p>
    {% endif %}
    </td>
      <td>
      <a class="btn btn-primary btn"
                style="color:white;text-decoration:none"
                href="{{ site.baseurl }}{{ post.url }}">
                Read more</a>
    </td>
    </tr>
  {% endif %}
  {% endif %}
  {% endfor %}
</table>
