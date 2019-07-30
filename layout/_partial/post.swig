{% macro render(post) %}
  {% if page.mathjax %}
    <script src="https://cdn.bootcss.com/mathjax/2.7.4/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
    <script type="text/x-mathjax-config;executed=true">MathJax.Hub.Config({tex2jax: {inlineMath: [["$","$"], ["\\(","\\)"]]}});</script>
  {% endif %}
  <article class="
  post
  {% if is_post() %} is_post {% endif %}
  ">
    <header class="post-header">
      <div class="post-time syuanpi fadeInRightShort back-1">
        <div class="post-time-wrapper">
          {% if not is_post() and post.top %}
            <i class="fas fa-thumbtack post-pin"></i>
          {% endif %}
          <time>{{ full_date(post.date, 'YYYY-MM-DD') }}</time>
          {% if post.categories and post.categories.length %}
            {% for category in post.categories %}
              <span class="post-category"><a href="{{ url_for(category.path) }}">{{ category.name }}</a></span>
            {% endfor %}
          {% endif %}
        </div>
      </div>
      <h2 class="post-title syuanpi fadeInRightShort back-2">
        <a href="{{ url_for(post.path) }}">{{ post.title }}</a>
      </h2>
    </header>
    <div class="post-content syuanpi fadeInRightShort back-3">
      {% if is_post() %}
        {{ post.content }}
      {% else %}
        {% if post.excerpt %}
          {{ post.excerpt }}
        {% else %}
          {{ post.content }}
        {% endif %}
      {% endif %}
    {% if post.excerpt and is_home() %}
      <p class="content-link">
        <a href="{{ url_for(post.path) }}#more">
          <span>{{ __('page.readmore') }}</span>
        </a>
      </p>
    {% endif %}
    </div>
    <div class="post-tags syuanpi fadeInRightShort back-3">
      <div class="share">
        <a href="https://twitter.com/intent/tweet?text={{ post.title|url_encode }}&url={{ config.url }}{{ url_for(post.path) }}&related=nzws_me" target="_blank" class="twitter"><i class="fab fa-twitter"></i> ツイート</a>
      </div>

      {% if post.tags and post.tags.length %}
        {% for tag in post.tags %}
          <a href="{{ base_url() }}{{ url_for(tag.path) }}">{{ tag.name }}</a>
        {% endfor %}
      {% endif %}
    </div>
    {% if is_post() %}
      {% include "_post/reward.swig" %}
      {% include "_post/copyright.swig" %}
    {% endif %}
  </article>
  {% if is_post() %}
    {% include "pagenum.swig" %}
    {% include "_post/comments.swig" %}

  {% endif %}
  {% if theme.scheme == 'banderole' %}
    {% include "./_feature/banderole.swig" %}
  {% endif %}
{% endmacro %}
