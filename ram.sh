#!/bin/bash

function used_ram {
free | grep Mem: | awk '{print $3}'
}

channel_key=80FU5RBQ8143F6HN
ram_values=$(used_ram)

echo -n "MEMORIA RAM EN USO: "
used_ram

curl https://api.thingspeak.com/update?api_key=${channel_key}\&field1=${ram_values}
