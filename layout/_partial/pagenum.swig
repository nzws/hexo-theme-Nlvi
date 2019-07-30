{% if not is_post() %}
  <nav class="pagination">
      {{ paginator({
          prev_text: '<i class="fas fa-angle-double-left"></i> ' + __("page.prev"),
          next_text: __("page.next") + ' <i class="fas fa-angle-double-right"></i>'
      }) }}
  </nav>
{% else %}
  <nav class="article-page">
    {% if page.prev.path %}
      <a href="{{ url_for(page.prev.path) }}" id="art-left" class="art-left">
        <span class="next-title">
          <i class="fas fa-angle-left"></i> {{page.prev.title}}
        </span>
      </a>
    {% endif %}
    {% if page.next.path %}
      <a href="{{ url_for(page.next.path) }}" id="art-right" class="art-right">
        <span class="prev-title">
          {{ page.next.title }} <i class="fas fa-angle-right"></i>
        </span>
      </a>
    {% endif %}
  </nav>
{% endif %}
