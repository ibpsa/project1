---
layout: page
title: Participants
permalink: /participants
---

<h1>Organizational Participants</h1>

<p>
Organizational participants are organizations such as companies, research institutes or universities that commit to
</p>
<ul>
<li>
contribute a minimum of 6 months of a full time employees per project year to the overall project using their own funding,
</li>
<li>
contribute to around 5 to 10 web-based coordination meetings annually, and
</li>
<li>
attend a semi-annual expert meeting, generally for two days using own funding.
</li>
</ul>
<p>
These meetings are used to coordinate current work and to steer future development. As far as possible, these coordination meetings will be collocated with an international or a national IBPSA conference.
</p>
<p>
The operating agents can reassess the organizational membership annually and terminate organizational memberships after such annual period, if the contributions of an organization does not meet the above requirements.
</p>

<table class="table_with_header">
<colgroup>
<col width="70%" />
<col width="15%" />
<col width="15%" />
</colgroup>
<thead valign="bottom">
<tr>
<th>Institute</th>
<th>Country</th>
<th>Contact</th>
</tr>
</thead>
<tbody valign="top">
{% for participant in site.data.organizational_participants %}
<tr>
  <td>
  {{ participant.institute }}
  </td>
  <td>
  {{ participant.country }}
  </td>
  <td>
  <a href="mailto:{{ participant.contact_email }}">{{ participant.contact_name }}</a>
  </td>  
</tr>
{% endfor %}
</tbody>
</table>

<h2>Individual Participants</h2>
<p>
Individual participants are contributors that participate in the project as is custom in other open-source projects without a pre-determined level of commitment.
</p>
<p>
The operating agents can reassess the individual participant membership annually and terminate membership if no substantial contributions are made.
</p>

<table class="table_with_header">
<colgroup>
<col width="70%" />
<col width="15%" />
<col width="15%" />
</colgroup>
<thead valign="bottom">
<tr>
<th>Institute</th>
<th>Country</th>
<th>Contact</th>
</tr>
</thead>
<tbody valign="top">
{% for participant in site.data.individual_participants %}
<tr>
  <td>
  {{ participant.institute }}
  </td>
  <td>
  {{ participant.country }}
  </td>
  <td>
  <a href="mailto:{{ participant.contact_email }}">{{ participant.contact_name }}</a>
  </td>  
</tr>
{% endfor %}
</tbody>
</table>
