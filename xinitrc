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

compton --config ~/.config/compton.conf -b &

dunst &

xset b off &

dropbox &

#volumeicon &

xset s 180 &

xss-lock -- i3lock -i $HOME/.wl/lock.png &

anamnesis --start &

mpd &

mpdscribble &

#clipit &

#nm-applet &

#blueman-applet &

unclutter &

xrdb -merge ~/.Xresources &

#xset fp+ $HOME/.fonts/misc
#xset fp+ $HOME/.fonts/ohsnap
#xset fp+ $HOME/.fonts/terminesspowerline

#eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
#export GPG_AGENT_INFO SSH_AUTH_SOCK

#eval $(gpg-agent --daemon)

#export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

#exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
#exec i3

exec i3 -V >> ~/logs/i3/i3log-$(date +'%F-%k-%M-%S') 2>&1
