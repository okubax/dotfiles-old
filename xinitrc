#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xset +fp /usr/share/fonts/misc # Inform the X server of new directories
xset fp rehash                # Forces a new rescan
xset s 180 &
xset b off &
xrdb -merge ~/.Xresources &
unclutter &
#compton --config ~/.config/compton.conf -b &
dunst &
xss-lock -- i3lock -i $HOME/.wl/lock.png &
dropbox &
anamnesis --start &
mpd &
mpdscribble &
#clipit &
#volumeicon &
#nm-applet &
#blueman-applet &
exec i3 -V >> ~/logs/i3/i3log-$(date +'%F-%k-%M-%S') 2>&1
