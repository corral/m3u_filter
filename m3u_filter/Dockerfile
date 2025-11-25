FROM openresty/openresty:alpine
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
# Instalar git (si quieres usar git dentro del contenedor, opcional)


# Copiar scripts y configuración
COPY run.sh /run.sh
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

# Copiar lua-resty-http
COPY resty /usr/local/openresty/lualib/resty

RUN chmod +x /run.sh

CMD ["/run.sh"]
