#!/usr/bin/env bash

function disc_used {
df -h | grep /dev/sda1 | awk '{print $4}'
}

channel_key=80FU5RBQ8143F6HN

disc_values=$(disc_used)

echo -n "ESPACIO DISPONIBLE EN DISCO: "
disc_used

curl https://api.thingspeak.com/update?api_key=${channel_key}\&field2=${disc_values}
