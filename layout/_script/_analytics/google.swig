{% if theme.analytics.google %}
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id={{ theme.analytics.google }}"></script>
<script data-no-instant>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  InstantClick.on('change', () => gtag('config', '{{ theme.analytics.google }}', {page_path: location.pathname + location.search}));
</script>

{% endif %}
