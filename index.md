---
layout: page
title: Tecnologia + Negócios = :) 
subtitle: Home 
---
{% include JB/setup %}



<ul class="posts">
  {% for post in site.posts %}
  
   {% capture this_year %}{{ post.date | date: "%Y" }}{% endcapture %}
   {% capture next_year %}{{ post.previous.date | date: "%Y" }}{% endcapture %}
    
   {% if forloop.first %}
      <h2>{{this_year}}</h2>
   {% endif %}   
      
      

    <li style="margin-bottom:10px;"><span style="color:green;">{{ post.date | date: "%b %e" }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
 
      {% unless forloop.last %} 
         {% if this_year != next_year %}
        
            <h2>{{next_year}}</h2>
        
         {% endif %}
      {% endunless %}  
 

  {% endfor %}
</ul>




