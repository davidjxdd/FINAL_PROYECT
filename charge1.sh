#!/bin/bash

function sc_1min {
uptime | awk '{print $9}'
}

channel_key=80FU5RBQ8143F6HN

ch_values1=$(sc_1min)

echo "CARGA DEL SISTEMA EN EL ULTIMO MINUTO: ${ch_values1}"

curl https://api.thingspeak.com/update?api_key=${channel_key}\&field3=${ch_values1}

