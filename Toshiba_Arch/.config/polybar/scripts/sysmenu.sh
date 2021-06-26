#!/bin/bash

MENU="$(rofi -no-lazy-grab -sep "|" -dmenu -i -p 'System :' \
-lines 3 \
-width 15 \
-xoffset -5 -yoffset +30 \
-location 3 \
-columns 1 \
<<< " Logout| Reboot| Shutdown")"
case "$MENU" in
  *Logout) openbox --exit;;
  *Reboot) systemctl reboot ;;
  *Shutdown) systemctl -i poweroff
esac

# -lines 4 \
# <<< " Lock| Logout| Reboot| Shutdown")"
  # *Lock) light-locker-command -l ;;
