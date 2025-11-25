#!/usr/bin/env sh
echo  "Iniciando M3U Filter..."
echo  "Merging options & variables for template"

# Comprobar si existe options.json
if [ ! -f /data/options.json ]; then
    echo "ERROR: /data/options.json no existe"
    exit 1
fi

# Leer valores del archivo JSON
M3U_URL=$(jq -r '.m3u_url // empty' /data/options.json)
GROUP_FILTER=$(jq -r '.group_filter // empty' /data/options.json)

# Exportar variables de entorno para que Nginx/Lua puedan usarlas
export M3U_URL
export GROUP_FILTER

echo "M3U_URL = $M3U_URL"
echo "GROUP_FILTER = $GROUP_FILTER"


# Ejecutar OpenResty en primer plano y mostrar logs
echo "Running nginx..."
openresty -g 'daemon off;' -c /usr/local/openresty/nginx/conf/nginx.conf
