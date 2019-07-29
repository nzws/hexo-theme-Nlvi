<link rel="apple-touch-startup-image" href="https://github.com/yuzulabo.png">
<link rel=icon type=image/png href=https://github.com/yuzulabo.png />
<link href="https://fonts.googleapis.com/css?family=M+PLUS+Rounded+1c" rel="stylesheet">
<link href="https://use.fontawesome.com/releases/v5.9.0/css/fontawesome.css" rel="stylesheet">
<link href="https://use.fontawesome.com/releases/v5.9.0/css/brands.css" rel="stylesheet">
<link href="https://use.fontawesome.com/releases/v5.9.0/css/solid.css" rel="stylesheet">

{{ css('style/style') }}
{% include "../../_script/config.swig" %}

{# lightbox #}
{% if theme.lightbox %}
    {{ css('script/lib/lightbox/css/lightbox.min') }}
{% endif %}

{# animation #}
{% if theme.animate %}
    {{ css('syuanpi/syuanpi.min') }}
{% endif %}

{# favicon #}
{% if theme.favicon %}
    <link rel="icon" href="{{ theme.favicon }}">
{% endif %}

{# any analytics #}
{% include "../../_script/_analytics/google.swig" %}
{% include "../../_script/_analytics/baidu.swig" %}
{% include "../../_script/_analytics/busuanzi.swig" %}
