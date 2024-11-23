#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$DISPLAY" ] && [ "$SDG_VTNR" = 1 ]; then
    Hyprland
fi
