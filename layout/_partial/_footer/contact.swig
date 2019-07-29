<div class="contact-icon">
  {% set urls = {
    github: 'https://github.com/',
    twitter: 'https://twitter.com/',
    zhihu: 'https://www.zhihu.com/people/',
    facebook: 'https://www.facebook.com/',
    linkedin: 'https://www.linkedin.com/in/',
    instagram: 'https://www.instagram.com/',
    douban: 'https://www.douban.com/people/',
    yuque: 'https://www.yuque.com/',
    medium: 'https://medium.com/',
    mastodon: '',
  } %}
  {% for name, path in theme.sub %}
    <a href="{{ urls[name] + path }}" class="fab fa-{{ name }}" title="{{ name }}" target="_blank"></a>
  {% endfor %}
</div>
