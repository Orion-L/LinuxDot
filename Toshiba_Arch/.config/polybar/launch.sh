#!/usr/bin/env sh

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# polybar satellite_bar -c $HOME/.config/polybar/config &

if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload satellite_bar &
    done
else
    polybar --reload satellite_bar &
fi


