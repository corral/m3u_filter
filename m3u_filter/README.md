# M3U Filter Add-on for Home Assistant

Este Add-on permite filtrar listas **M3U** directamente desde tu Raspberry Pi con Home Assistant, usando **OpenResty + Lua**.  
Se puede usar para filtrar por **grupo de títulos** (`group-title`) o para obtener un endpoint de **health check**.

---

## 🔹 Características

- Filtrado de listas M3U por `group-title`.
- Lectura de configuración directamente desde Home Assistant (`options.json`).
- Endpoint `/filtrar` que devuelve la M3U filtrada.
- Endpoint `/health` que muestra las variables de configuración y el estado del Add-on.
- Logs visibles en **Supervisor → Registro del Add-on**.

---

## 🔹 Configuración del Add-on

En **Supervisor → Configuración del Add-on → Opciones**, define las siguientes variables:

```json
{
  "m3u_url": "https://TU-LISTA.m3u",
  "group_filter": "ES|"
}
