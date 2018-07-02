---
layout: page
title: Participation
permalink: /participation
---

<h1>Participation</h1>

There are three levels of participation,
<em>organizational participants</em>,
<em>sponsoring participants</em> and
<em>individual participants</em>.
There are currently
{{ site.data.organizational_participants | size }} organizational participants,
{{ site.data.sponsoring_participants | size }} sponsoring participants, and
{{ site.data.individual_participants | size }} individual participants.

For further information, see below and the
[workplan]({{ site.url }}/downloads/ibpsa_project1_workplan.pdf).

To register as a participant, visit the [registration form](https://docs.google.com/a/lbl.gov/forms/d/1tyu3Qb3ydPseACxBgtL_UTKIdQS75eKr4zX89v7T0EM/viewform).

To receive announcements you need join one or more of these email announcement lists:

<table>
<tr><td>
General Project Announcements,<br/>also used to announce meetings in the work groups.
</td><td>
<a class="btn btn-primary btn"
                style="color:white;text-decoration:none"
                href="https://groups.google.com/forum/#!forum/ibpsa-project-1-announcements">
                Archive</a>
</td><td>
<a class="btn btn-primary btn"
                style="color:white;text-decoration:none"
                href="https://groups.google.com/forum/#!forum/ibpsa-project-1-announcements/join">
                Register</a>
</td></tr>
<tr><td>
Work Package 1.1
</td><td>
<a class="btn btn-primary btn"
                style="color:white;text-decoration:none"
                href="https://groups.google.com/forum/#!forum/ibpsa-project-1-wp1-1">
                Archive</a>
</td><td>
<a class="btn btn-primary btn"
                style="color:white;text-decoration:none"
                href="https://groups.google.com/forum/#!forum/ibpsa-project-1-wp1-1/join">
                Register</a>
</td></tr>
<tr><td>
Work Package 1.2
</td><td>
<a class="btn btn-primary btn"
                style="color:white;text-decoration:none"
                href="https://groups.google.com/forum/#!forum/ibpsa-project-1-wp1-2">
                Archive</a>
</td><td>
<a class="btn btn-primary btn"
                style="color:white;text-decoration:none"
                href="https://groups.google.com/forum/#!forum/ibpsa-project-1-wp1-2/join">
                Register</a>
</td></tr>
<tr><td>
Task 2
</td><td>
<a class="btn btn-primary btn"
                style="color:white;text-decoration:none"
                href="https://groups.google.com/forum/#!forum/ibpsa-project-1-information-modelling">
                Archive</a>
</td><td>
<a class="btn btn-primary btn"
                style="color:white;text-decoration:none"
                href="https://groups.google.com/forum/#!forum/ibpsa-project-1-information-modelling/join">
                Register</a>
</td></tr>
<tr><td>
Task 3
</td><td>
<a class="btn btn-primary btn"
                style="color:white;text-decoration:none"
                href="https://groups.google.com/forum/#!forum/ibpsa-project-1-application-and-dissemination">
                Archive</a>
</td><td>
<a class="btn btn-primary btn"
                style="color:white;text-decoration:none"
                href="https://groups.google.com/forum/#!forum/ibpsa-project-1-application-and-dissemination/join">
                Register</a>
</td></tr>
</table>

You don't need to be an
organizational, individual or sponsoring participant
to join this email list.
Please click the link to register.
Note that the default setting from google groups is to not receive messages; you need to change this setting
during the registration in order to received messages.


<h2>Organizational Participants</h2>

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
  {% if participant.role == "Co-operating agent" %}
  <br/>
  {{ participant.role }}
  {% endif %}
  </td>  
</tr>
{% endfor %}
</tbody>
</table>

<h2>Sponsoring Participant</h2>

Sponsoring participants are individuals or organizations that fund the project
with cash contributions at US-$ 5,000 per year,
which we intent to use to offset various costs
that otherwise would need to be paid by the participants.

This membership will be valid for one year, and can be renewed for multiple periods.

<table class="table_with_header">
<colgroup>
<col width="70%" />
<col width="15%" />
<col width="15%" />
</colgroup>
<thead valign="bottom">
<tr>
<th>Company</th>
<th>Country</th>
<th>Contact</th>
</tr>
</thead>
<tbody valign="top">
{% for participant in site.data.sponsoring_participants %}
<tr>
  <td>
  {{ participant.company }}
  </td>
  <td>
  {{ participant.country }}
  </td>
  <td>
  <a href="mailto:{{ participant.contact_email }}">{{ participant.contact_name }}</a>
  {% if participant.role == "Co-operating agent" %}
  <br/>
  {{ participant.role }}
  {% endif %}
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
<thead valign="bottom">
<tr>
<th>Name</th>
<th>Affiliation</th>
<th>Country</th>
</tr>
</thead>
<tbody valign="top">
{% for participant in site.data.individual_participants %}
<tr>
  <td>
    <a href="mailto:{{ participant.contact_email }}">{{ participant.contact_name }}</a>
  </td>
  <td>
  {{ participant.affiliation }}
  </td>
  <td>
  {{ participant.country }}
  </td>  
</tr>
{% endfor %}
</tbody>
</table>
