#!/usr/bin/env sh

killall -q polybar
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done
polybar vm_bar -c $HOME/.config/polybar/config &
