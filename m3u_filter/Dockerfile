FROM openresty/openresty:alpine

# Instalar opm y lua-resty-http
RUN apk add --no-cache curl git build-base lua5.1 lua5.1-dev \
    && /usr/local/openresty/luajit/bin/opm get ledgetech/lua-resty-http

# Copiar scripts y configuración
COPY run.sh /run.sh
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

RUN chmod +x /run.sh

CMD ["/run.sh"]
