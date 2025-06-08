# Latest Posts

{% for post in site.posts %}
  <div class="post-preview">
    <h3>
      <a href="{{ post.url }}">
        {{ post.title }}
        {% if post.language %}
          <span class="language-tag">{{ post.language }}</span>
        {% endif %}
      </a>
    </h3>
    {% if post.thumbnail_url %}
    <p class="post-meta">{{ post.date | date: "%B %d, %Y" }}</p>
    <div class="post-thumbnail">
      <a href="{{ post.url }}">
        <img src="{{ post.thumbnail_url }}" alt="{{ post.title }}">
      </a>
    </div>
    {% endif %}
    <a href="{{ post.url }}">Continue lendo...</a>
  </div>
  <hr>
{% endfor %}