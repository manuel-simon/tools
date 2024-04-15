#!/bin/bash

if [[ $# != 1 ]]; then
    echo "Usage: qr <url>"
    exit 1
fi

URL=$1
FILE=$(mktemp -q)
qrencode "${URL}" -o "${FILE}"

if [ -z "${KITTY_WINDOW_ID}" ]; then
    xdg-open "${FILE}"
else
    kitty +kitten icat "${FILE}"
    sleep 0.5
fi

rm "${FILE}"
