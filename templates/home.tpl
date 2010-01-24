{% include 'header' %}

{{ 'portfolio' | item_from_path | assign_to: 'portfolio' }}

<section id="portfolio">
	{% for entry in portfolio.children %}
		<article class="clearfix">
			<aside class="meta">
				<h3>{{ entry.title }}</h3>
				
				<p>
					{{ entry.data.tags }}
				</p>
			</aside>
			
			<section class="content">
				<div class="scrollable">
					<div class="items">
						{% for image in entry.children %}
							<img alt="{{ image.title }}" height="550" src="{{ image.data.preview.url }}" width="700" />
						{% endfor %}
					</div>
				</div>
			</section>
		</article>
	{% endfor %}
</section>

{% include 'footer' %}