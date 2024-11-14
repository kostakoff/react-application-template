FROM docker.io/kostakoff/rocky-base-images:8-nginx

LABEL application=fronend

COPY --chown=appuser:appuser dist/ /usr/share/nginx/html
COPY --chown=appuser:appuser nginx.conf /etc/nginx/nginx.conf
