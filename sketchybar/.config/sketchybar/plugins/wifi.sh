#!/bin/sh

WIFI=$(ipconfig getsummary en0 | awk -F ' SSID : ' '/ SSID : / {print $2}')
# WIFI=${WIFI:-"Not Connected"}
# WIFI=${INFO:-$WIFI}

sketchybar --set "$NAME" icon="" label="$WIFI"
