#!/bin/sh

WIFI=$(ipconfig getsummary $(networksetup -listallhardwareports | awk '/Hardware Port: Wi-Fi/{getline; print $2}') | awk -F ' SSID : ' '/ SSID : / {print $2}')
if [ -z "$WIFI" ]; then
  WIFI="Not Connected"
  ICON="󰖪"
else
  ICON=""
fi
# WIFI=${WIFI:-"Not Connected"}
# WIFI=${INFO:-$WIFI}

sketchybar --set "$NAME" icon="${ICON}" label="${WIFI}"
