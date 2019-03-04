#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export QT_QPA_PLATFORMTHEME="qt5ct"
export XDG_CURRENT_DESKTOP="kde"
export VISUAL="nvim"
export EDITOR="nvim"
export DOTNET_CLI_TELEMETRY_OPTOUT=1
