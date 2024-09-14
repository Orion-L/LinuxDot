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
    loginctl lock-session
    ;;
  ${SLEEP})
    systemctl suspend
    ;;
  ${LOGOUT})
    loginctl kill-user $USER
    ;;
  ${SHUTDOWN})
    systemctl poweroff
    ;;
  ${REBOOT})
    systemctl reboot
    ;;
esac
