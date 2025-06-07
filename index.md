# Samuel Matioli

## Últimos Posts

{% for post in site.posts %}
  <div class="post-preview">
    <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
    <p class="post-meta">{{ post.date | date: "%B %d, %Y" }}</p>
    {{ post.excerpt }}
    <a href="{{ post.url }}">Continue lendo...</a>
  </div>
  <hr>
{% endfor %}

## Contato
- [GitHub](https://github.com/smatioli)
- [LinkedIn](https://linkedin.com/in/samuelmatioli)
- Email: smatioli@gmail.com 