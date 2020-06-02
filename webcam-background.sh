#!/bin/bash

ssid=$(iwgetid -r)
if [[ "$ssid" == "Geburtstag" ]]; then
	exit 1
fi


timewithoutminutes=$(date +%Y/%m/%d/%0H)
minutes=$(date +%M)
(( minutes = minutes / 10 ))
(( minutes = minutes * 10 ))
minutes=$(printf "%02d" ${minutes})
wget -O ~/.background "www.foto-webcam.eu/webcam/include/dlimg.php?wc=freimann&img=${timewithoutminutes}${minutes}&res=hd"  > /dev/null
feh --bg-scale ~/.background

