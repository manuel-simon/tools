#!/bin/bash

PARAM=$1

ssid=$(iwgetid -r)
if [[ "$ssid" == "AndroidAP_4347" && "$PARAM" != "force" ]]; then
	exit 1
fi

export DISPLAY=:0
wget -O ~/.background "https://www.foto-webcam.eu//webcam/freimann/current/1920.jpg"  > /dev/null
feh --bg-scale ~/.background

