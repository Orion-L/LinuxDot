#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ "$(tty)" = "/dev/tty1" ]; then
    exec Hyprland
fi

export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket

PS1='[\u@\h \W]\$ '

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export EDITOR=vim
