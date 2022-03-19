#!/bin/bash

function sc_5min {
uptime | awk '{print $9}'
 }

channel_key=80FU5RBQ8143F6HN

ch_values2=$(sc_5min)

echo "CARGA DEL SISTEMA EN LOS ULTIMOS 5 MINUTOS: ${ch_values2}"

curl https://api.thingspeak.com/update?api_key=${channel_key}\&field4=${ch_values2}

