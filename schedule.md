---
layout: page
title: Schedule
permalink: /schedule/
---

This page contains link to the lectures I give throughout the semester. 

<ul>
<li>Dates and topics in the future are tentative and subject to slight changes.</li>
<li> I will try to post slides before class. However, I will post the reading materials before the class.</li>
<li> You are supposed to read all non-optional materials <span class="alert">before</span> the lecture.</li>
</ul>

<table width="100%">
<colgroup>
<col width="2%" />
<col width="28%" />
<col width="25%" />
<col width="30%" />
<col width="20%" />
</colgroup>
<thead>
<tr>
<th></th>
<th>Lecutre</th>
<th>Description</th>
<th>Reading</th>
<th>Events</th>
</tr>
</thead>
<tbody>

{% for lecture in site.data.lectures %}
<tr>
{% if lecture.merge == "yes" %}
<td colspan="5" class="merged-cell">
{{ lecture.title }} <br/> {{ lecture.date }}
</td>
{% else %}
<td>
{{ lecture.index }}
</td>
<td class="archiveposturl">
    <span>
    {% if lecture.filename %}
    <a href="{{ site.url }}/{{ site.baseurl }}/lectures/{{ lecture.filename }}.pdf">
    {{ lecture.title }}
    </a>
    {% else %}
    {{ lecture.title }}
    {% endif %} 
    </span>
    <br/>
    <i> ( {{ lecture.date }} ) </i>
</td>
<td markdown="span">{{ lecture.description }}</td>
<td>

{% for reading in lecture.readings %}
    <div> 
    {% if reading.ref %} <b>[{{ reading.ref }}]</b> {% endif %} 
    {% if reading.absolute == "yes" %} <a href="{{ reading.url }}">{{ reading.title }}</a> 
    {% else %}
    <a href="{{ site.baseurl }}/{{ reading.url }}">{{ reading.title }}</a>
    {% endif %} 
    {% if reading.optional == "yes" %} 
    <i> (Optional) </i> {% endif %} 
    </div>
{% endfor %}

</td>
<td>

{% for deadline in lecture.deadlines %}
    <div class="deadline"> {{ deadline.title }} </div>
{% endfor %}

</td>
{% endif %}

</tr>

{% endfor %}



</tbody>
</table>