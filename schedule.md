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
<col width="10%" />
<col width="30%" />
<col width="30%" />
<col width="30%" />
</colgroup>
<thead>
<tr>
<th>Date</th>
<th>Lecutre</th>
<th>Reading</th>
<th>Events</th>
</tr>
</thead>
<tbody>

{% for lecture in site.data.lectures %}
<tr>
{% if lecture.merge == "yes" %}
<td colspan="4" class="merged-cell">
{{ lecture.title }} <br/> {{ lecture.date }}
</td>
{% else %}


<td class="lecdate">
   {{ lecture.date }}
</td>

<td class="lecdate">
    <span>
    {{ lecture.title }}
    {% if lecture.filename %}
    <a href="{{ site.url }}/{{ site.baseurl }}/lectures/{{ lecture.filename }}.pdf">
    [slides]
    </a>
    {% endif %} 
    
    {% for slide in lecture.slides %}
    <div>
    {{ slide.title }}
    {% if slide.filename %}
    <a href="{{ site.url }}/{{ site.baseurl }}/lectures/{{ slide.filename }}.pdf">
    [slides]
    </a>
    {% endif %}
    </div> 
    {% endfor %}
    
    </span>
</td>

<td class="lecdate">
{% for reading in lecture.readings %}
    <div> 
    {% if reading.ref %} <b>[{{ reading.ref }}]</b> {% endif %} 
    {% if reading.url %}
    {% if reading.absolute == "yes" %} <a href="{{ reading.url }}">{{ reading.title }}</a> 
    {% else %}
    <a href="{{ site.baseurl }}/{{ reading.url }}">{{ reading.title }}</a>
    {% endif %}
    {% else %} 
    {{ reading.title }}
    {% endif %}
    {% if reading.note %} 
    <i> {{ reading.note }} </i> {% endif %} 
    {% if reading.optional == "yes" %} 
    <i> (Optional) </i> {% endif %}
    </div>
{% endfor %}
</td>

<td class="lecdate">
{% for deadline in lecture.deadlines %}
    <div class="deadline"> {{ deadline.title }} </div>
{% endfor %}
</td>
{% endif %}

</tr>

{% endfor %}



</tbody>
</table>