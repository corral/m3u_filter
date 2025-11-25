FROM openresty/openresty:alpine

# Copiar scripts y configuración
COPY run.sh /run.sh
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

RUN chmod +x /run.sh

CMD ["/run.sh"]
