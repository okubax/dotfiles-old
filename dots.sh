#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# bashrc
ln -s ${BASEDIR}/bashrc $HOME/.bashrc

# bash_profile
ln -s ${BASEDIR}/bash_profile $HOME/.bash_profile

# compton
ln -s ${BASEDIR}/compton.conf $HOME/.config/compton.conf

# dunst
ln -s ${BASEDIR}/dunstrc $HOME/.config/dunstrc

# feh
ln -s ${BASEDIR}/fehbg $HOME/.fehbg

# nano
ln -s ${BASEDIR}/nanorc $HOME/.nanorc

# urlview
ln -s ${BASEDIR}/fehbg $HOME/.urlview

# xinitrc
ln -s ${BASEDIR}/xinitrc $HOME/.xinitrc

# Xresources
ln -s ${BASEDIR}/Xresources $HOME/.Xresources

# bin
ln -s ${BASEDIR}/bin $HOME/bin

# colors
ln -s ${BASEDIR}/colors $HOME/.colors

# dropbox-cli
ln -s ${BASEDIR}/dropbox-cli $HOME/dropbox-cli

# fontconfig
ln -s ${BASEDIR}/fontconfig $HOME/.config/fontconfig

# todo
ln -s ${BASEDIR}/todo $HOME/.todo

# fonts
ln -s ${BASEDIR}/fonts $HOME/.fonts

# i3
ln -s ${BASEDIR}/i3 $HOME/.i3

# irssi
ln -s ${BASEDIR}/irssi $HOME/.irssi

# mpd
ln -s ${BASEDIR}/mpd $HOME/.mpd

# mpdscribble
ln -s ${BASEDIR}/mpdscribble $HOME/.mpdscribble

# mplayer
ln -s ${BASEDIR}/mplayer $HOME/.mplayer

# msmtp
ln -s ${BASEDIR}/msmtprc $HOME/.msmtprc

# mutt
ln -s ${BASEDIR}/mutt $HOME/.mutt

# ncmpcpp
ln -s ${BASEDIR}/ncmpcpp $HOME/.ncmpcpp

# offlineimap
ln -s ${BASEDIR}/offlineimap.py $HOME/.offlineimap.py
ln -s ${BASEDIR}/offlineimaprc $HOME/.offlineimaprc

# ranger
ln -s ${BASEDIR}/ranger $HOME/.config/ranger

# todo.txt
ln -s ${BASEDIR}/todo $HOME/.todo

# vim
ln -s ${BASEDIR}/vimrc $HOME/.vimrc
ln -s ${BASEDIR}/vim/ $HOME/.vim

# wl
ln -s ${BASEDIR}/wl $HOME/.wl
