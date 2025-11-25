#!/usr/bin/env sh
echo "Iniciando OpenResty..."

# Ejecutar OpenResty en primer plano y mostrar logs
openresty -g 'daemon off;' -c /usr/local/openresty/nginx/conf/nginx.conf
