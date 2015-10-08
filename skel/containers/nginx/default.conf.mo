server {
  listen       80;
  server_name  {{PROJECT_NGINX_VIRTUAL_HOST}};

  root   /srv/http/source;
  index  index.html index.htm;

  location ~ \.php$ {
    fastcgi_split_path_info ^(.+\.php)(/.+)$;
    include fastcgi_params;
    fastcgi_param SCRIPT_FILENAME $request_filename;
    fastcgi_intercept_errors on;
    fastcgi_pass php:9000;
  }
}

{{#PROJECT_NGINX_VIRTUAL_HOST_ALTS}}
# Redirect alternative domain names.
server {
  listen 80;
  server_name {{PROJECT_NGINX_VIRTUAL_HOST_ALTS}};
  # $scheme will get the http protocol
  # and 301 is best practice for tablet, phone, desktop and seo
  return 301 $scheme://{{PROJECT_NGINX_VIRTUAL_HOST}}$request_uri;
}
{{/PROJECT_NGINX_VIRTUAL_HOST_ALTS}}

# vim:syntax=nginx
