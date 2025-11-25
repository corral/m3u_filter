#!/usr/bin/with-contenv bashio
bashio::log.info "Iniciando M3U Filter..."
bashio::log.info "Merging options & variables for template"
# shellcheck disable=SC2046
JSON_CONF=$(jq --arg port $(bashio::core.port) \
    '({options: .}) + ({variables: {port: $port}})' \
    /data/options.json)
bashio::log.info "Generating nginx.conf from template in /etc/nginx/nginx.conf.gtpl"


if bashio::config.exists 'm3u_url'; then
    lang=$(bashio::config 'm3u_url')
    bashio::log.info "Setting m3u_url to ${m3u_url}..."
    export m3u_url=${m3u_url}
fi

echo $JSON_CONF | tempio \
    -template /etc/nginx/nginx.conf \
    -out /usr/local/openresty/nginx/conf/nginx.conf

# Ejecutar OpenResty en primer plano y mostrar logs
bashio::log.info "Running nginx..."
openresty -g 'daemon off;' -c /usr/local/openresty/nginx/conf/nginx.conf
