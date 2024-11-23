#!/usr/bin/env sh

LOCK="lock"
SLEEP="sleep"
LOGOUT="logout"
SHUTDOWN="shutdown"
REBOOT="reboot"
OPTIONS="${LOCK}\n${SLEEP}\n${LOGOUT}\n${SHUTDOWN}\n${REBOOT}"

CHOSEN="$(echo -e ${OPTIONS} | wofi --show dmenu)"
case ${CHOSEN} in
  ${LOCK})
    swaymsg 'exec $lock'
    ;;
  ${SLEEP})
    systemctl suspend
    ;;
  ${LOGOUT})
    swaymsg exit
    ;;
  ${SHUTDOWN})
    systemctl poweroff
    ;;
  ${REBOOT})
    systemctl reboot
    ;;
esac
