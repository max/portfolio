<article class="clearfix">
	<aside class="meta">
		<ul>
			<li class="user">{{ post.creator.name }}</li>
			
			<li class="date">{{ post.published_at | date:'%B %d, %Y' }}</li>
			
			<li class="label no_bottom">{{ post | linked_label_sentence }}</li>
		</ul>
	</aside>

	<section class="content">
		<h3>{{ post | link_to_item }}</h3>
		
		{{ post.data.content | strip_html | truncatewords: 50 | textilize }}
	</section>
</article>