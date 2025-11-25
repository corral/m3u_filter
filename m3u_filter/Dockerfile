FROM openresty/openresty:alpine
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
# Instalar git (si quieres usar git dentro del contenedor, opcional)
RUN apk add --no-cache git curl build-base

# Copiar scripts y configuración
COPY run.sh /run.sh
COPY nginx.conf /etc/nginx/nginx.conf

# Copiar lua-resty-http
COPY resty /usr/local/openresty/lualib/resty

RUN chmod +x /run.sh

CMD ["/run.sh"]
