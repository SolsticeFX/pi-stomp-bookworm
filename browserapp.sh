#!/bin/bash -e
set -x
echo "starting browser..."


GEO="$(fbset -s | awk '$1 == "geometry" { print $2":"$3 }')"
WIDTH=$(echo "$GEO" | cut -d: -f1)
HEIGHT=$(echo "$GEO" | cut -d: -f2)

echo "Resolution: $WIDTH x $HEIGHT"

export DISPLAY=:0

startx /usr/bin/chromium --window-position=0,0 --window-size=$WIDTH,$HEIGHT  --app="localhost" --start-maximized --no-default-browser-check --start-fullscreen --kiosk --noerrdialogs --disable-translate --fast --fast-start --disable-features=TranslateUI 
