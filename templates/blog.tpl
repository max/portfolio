{% include 'header' %}

<section id="blog">
	{% for post in blog.recent_posts.10 %}
		{% include 'post' for post %}
	{% endfor %}
</section>

{% include 'footer' %}