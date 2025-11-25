FROM openresty/openresty:alpine

# Instalar dependencias
RUN apk add --no-cache curl git build-base luarocks

# Instalar lua-resty-http con luarocks
RUN luarocks install lua-resty-http

# Copiar scripts y configuración
COPY run.sh /run.sh
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

RUN chmod +x /run.sh

CMD ["/run.sh"]

