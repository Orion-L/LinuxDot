#!/usr/bin/env bash

XRAND=$(xrandr --verbose)

MONITOR=$(echo "$XRAND" | sed -En "s/^([^\ ]+)\ connected primary\ .*$/\1/p")
BRIGHTNESS=$(echo "$XRAND" | sed -En "s/^.*Brightness:\ (.+)$/\1/p")

if [ "$1" = "inc" ]; then
    if [ "$BRIGHTNESS" == "1.0" ]; then
        exit 0
    fi
    NEW=$(awk "BEGIN {print ($BRIGHTNESS+0.1)}")
elif [ "$1" = "dec" ]; then
    if [ "$BRIGHTNESS" == "0.0" ]; then
        exit 0
    fi
    
    NEW=$(awk "BEGIN {print ($BRIGHTNESS-0.1)}")
fi

xrandr --output "$MONITOR" --brightness "$NEW"
