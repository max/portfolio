<?xml version="1.0" encoding="utf-8"?>
<feed xmlns="http://www.w3.org/2005/Atom">
  <title>{{ blog.title }}</title>
  <link href="{{ blog.feed.url }}" rel="self" />
  <link href="{{ blog.url }}" />
  <id>{{ blog.id }}</id>
  <updated>{{ blog.last_updated_at | isodate }}</updated>
 
  {% for post in blog.recent_posts.15 %}
    <entry>
      <title>{{ post.title | h }}</title>
      <link href="{{ post.url }}" />
      <id>{{ post.id }}</id>
      <updated>{{ post.updated_at | isodate }}</updated>
      <published>{{ post.published_at | isodate }}</published>
      <content type="html">{{ post.content | h }}</content>
      <author>
        <name>{{ post.author.name | h }}</name>
      </author>
    </entry>
  {% endfor %}
</feed>