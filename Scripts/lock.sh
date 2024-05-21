#!/usr/bin/env bash

icon="$HOME/Pictures/icon.png"
tmpbg="$HOME/Documents/temp.png"

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
dunstctl set-paused true
i3lock -u -i "$tmpbg" -n; rm ~/Documents/temp*.png && dunstctl set-paused false
