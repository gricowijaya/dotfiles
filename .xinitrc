#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# twm &
# xclock -geometry 50x50-1+1 &
# xterm -geometry 80x50+494+51 &
# xterm -geometry 80x20+494-0 &
# exec xterm -geometry 80x66+0+0 -name login

# exec enlightenment_start
# feh --bg-scale /home/gricowijaya/Pictures/Wallpaper/jpg/anime-scenery.jpg
# slstatus &
# exec i3
# exec startxfce4
# exec mate-session
# exec xmonad
# exec startlxqt
# exec startlxde
# exec awesome
# exec bspwm
# exec gnome-session
# exec gnome-session --session=gnome-classic
# exec startplasma-x11 exec startplasma-wayland exec startxfce4
# exec startfluxbox
# exec openbox-session
# exec cinnamon-session
# exec pekwm
# exec catwm
# export _JAVA_AWT_WM_NONREPARENTING=1
# exec dwm
# exec startede
# exec icewm-session
# exec jwm
# exec monsterwm
# exec notion
# exec startdde       # deepin-session
