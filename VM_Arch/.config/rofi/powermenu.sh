#!/usr/bin/env sh

LOGOUT="logout"
SHUTDOWN="shutdown"
REBOOT="reboot"
OPTIONS="${LOGOUT}\n${SHUTDOWN}\n${REBOOT}"

UPTIME="$(uptime -p | sed -e 's/up //g')"
CHOSEN="$(echo -e ${OPTIONS} | rofi -dmenu -p "uptime: ${UPTIME} > ")"
case ${CHOSEN} in
  ${LOGOUT})
    bspc quit
    ;;
  ${SHUTDOWN})
    systemctl poweroff
    ;;
  ${REBOOT})
    systemctl reboot
    ;;
esac
