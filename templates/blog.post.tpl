{% include 'header' %}

<section id="blog">
	<article class="clearfix">
		<aside class="meta">
			<h3>{{ item.title }}</h3>
		
			<p class="date">
				{{ item.published_at | date:'%B %d, %Y' }}
			</p>
		
			<p class="label">
				{{ item | linked_label_sentence }}
			</p>
		</aside>
	
		<section class="content">
			{{ item.data.content }}
		</section>
	</article>
</section>

{% include 'footer' %}