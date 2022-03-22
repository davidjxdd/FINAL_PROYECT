#!/bin/bash

function sc_15min {
uptime | awk '{print $11}'
}

channel_key=80FU5RBQ8143F6HN

ch_values3=$(sc_15min)

echo "CARGA DEL SISTEMA EN LOS ULTIMOS 15 MINUTOS: ${ch_values3}"

curl https://api.thingspeak.com/update?api_key=${channel_key}\&field5=${ch_values3}
