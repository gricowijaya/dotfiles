# ~/.bashrc
#

# If not running interactively, don't do anything

#exec fish

#exec feh for the background

#feh_command=" feh --bg-scale /home/gricowijaya/Pictures/wallpaper/minimalist.jpg"
#eval "$feh_command"

#exec transparency
# picom_command="picom -b"
# eval "$picom_command"

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

