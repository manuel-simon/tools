#!/bin/bash

ssid=$(iwgetid -r)
if [[ "$ssid" == "Galaxy S108610" ]]; then
	exit 1
fi

export DISPLAY=:0
wget -O ~/.background "https://www.foto-webcam.eu//webcam/freimann/current/1920.jpg"  > /dev/null
feh --bg-scale ~/.background

