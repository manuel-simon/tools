#!/bin/bash
set -x
PARAM=$1

ssid=$(iwgetid -r)
if [[ "$ssid" == "AndroidAP_4347" && "$PARAM" != "force" ]]; then
	exit 1
fi
DISPLAY=:0.0
#export DISPLAY=:0.0
echo $DISPLAY

#wget -O ~/.background "https://www.foto-webcam.eu/webcam/tum-olympiapark/current/1920.jpg"  > /dev/null
wget -O ~/.background "https://www.terra-hd.de/deutschesmuseum/img/current/3840.jpg"  > /dev/null
DISPLAY=:0.0 feh --bg-scale ~/.background

