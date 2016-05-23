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

# git
#ln -s ${BASEDIR}/gitconfig $HOME/.gitconfig

# goobook
ln -s ${BASEDIR}/goobookrc $HOME/.goobookrc

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

# filezilla
#ln -s ${BASEDIR}/filezilla $HOME/.config/filezilla

# fontconfig
ln -s ${BASEDIR}/fontconfig $HOME/.config/fontconfig

# todo
ln -s ${BASEDIR}/todo $HOME/.todo

# fonts
ln -s ${BASEDIR}/fonts $HOME/.fonts

# gnupg
#ln -s ${BASEDIR}/gnupg $HOME/.gnupg

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
ln -s ${BASEDIR}/msmtp-gmail.gpg $HOME/.msmtp-gmail.gpg

# mutt
ln -s ${BASEDIR}/mutt $HOME/.mutt

# ncmpcpp
ln -s ${BASEDIR}/ncmpcpp $HOME/.ncmpcpp

# offlineimap
ln -s ${BASEDIR}/offlineimap.py $HOME/.offlineimap.py
ln -s ${BASEDIR}/offlineimaprc $HOME/.offlineimaprc

# pass
#ln -s ${BASEDIR}/pass $HOME/.password-store

# private
#ln -s ${BASEDIR}/private $HOME/.private

# ranger
#ln -s ${BASEDIR}/ranger $HOME/.config/ranger

# ssh
#ln -s ${BASEDIR}/ssh $HOME/.ssh

# todo.txt
ln -s ${BASEDIR}/todo $HOME/.todo

# vim
ln -s ${BASEDIR}/vimrc $HOME/.vimrc
ln -s ${BASEDIR}/vim/ $HOME/.vim

# weechat
ln -s ${BASEDIR}/weechat $HOME/.weechat

# wl
ln -s ${BASEDIR}/wl $HOME/.wl
