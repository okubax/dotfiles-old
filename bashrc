#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="\[\e[1;34m\]\u\[\e[0m\] » [\[\e[1;32m\]\W\[\e[0m\]]\[\e[1;37m\]:\[\e[0m\] "
#PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\]\[\e[0;32m\]\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[0;37m\]'
#PS1='[\u@\h \W]\$ '
#PS1='\[\033[1;34m\][\[\033[1;33m\]\A\[\033[1;34m\]]-[\[\033[1;33m\]\w\[\033[1;34m\]]\n\[\033[1;34m\](\[\033[1;31m\]\$\[\033[1;34m\]> \[\033[00m\]'


## Modified commands ## {{{
alias diff='colordiff'              # requires colordiff package
alias grep='grep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='nano -w'
alias ping='ping -c 5'
# }}}

## New commands ## {{{
alias da='date "+%A, %B %d, %Y [%T]"'
alias du1='du --max-depth=1'
alias hist='history | grep'         # requires an argument
alias openports='ss --all --numeric --processes --ipv4 --ipv6'
alias pgg='ps -Af | grep'           # requires an argument
alias ..='cd ..'
# }}}

# Privileged access
if [ $UID -ne 0 ]; then
    alias sudo='sudo '
    alias scat='sudo cat'
    alias svim='sudo vim'
    alias root='sudo su'
    alias reboot='sudo systemctl reboot'
    alias poweroff='sudo systemctl poweroff'
    alias update='sudo pacman -Su'
    alias netctl='sudo netctl'
fi

## ls ## {{{
alias ls='ls -hF --color=auto'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ll -A'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | more'
# }}}

## Safety features ## {{{
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'                    # 'rm -i' prompts for every file
# safer alternative w/ timeout, not stored in history
# alias rm=' timeout 3 rm -Iv'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias cls=' echo -ne "\033c"'       # clear screen for real
# }}}

## Make Bash error tollerant ## {{{
alias :q=' exit'
alias :Q=' exit'
alias :x=' exit'
alias cd..='cd ..'
# }}}

## Pacman aliases ## {{{
#if necessary, replace 'pacman' with your favorite AUR helper and adapt the commands accordingly
alias pac="sudo pacman -S"		# default action	- install one or more packages
alias pacy="sudo pacman -Syy"		#			- sync all packages to latest versions
alias pacu="sudo pacman -Syu"		# '[u]pdate'		- upgrade all packages to their newest version
alias pacr="sudo pacman -Rns"		# '[r]emove'		- uninstall one or more packages
alias pacs="pacman -Ss"		# '[s]earch'		- search for a package using one or more keywords
alias paci="pacman -Si"		# '[i]nfo'		- show information about a package
alias paclo="pacman -Qdt"		# '[l]ist [o]rphans'	- list all packages which are orphaned
alias pacc="sudo pacman -Sc"		# '[c]lean cache'	- delete all not currently installed package files
alias paclf="pacman -Ql"		# '[l]ist [f]iles'	- list all files installed by a given package
#alias pacexpl="/usr/bin/pacman -D --asexp"	# 'mark as [expl]icit'	- mark one or more packages as explicitly installed
#alias pacimpl="/usr/bin/pacman -D --asdep"	# 'mark as [impl]icit'	- mark one or more packages as non explicitly installed

## Cower
alias cows="cower -s"			# find aur packages
alias cowl="pacman -Qm"			# list installed aur packages
alias cowu="cower -u"			# find aur updates

## AMD GPU Info
#alias gputemp="aticonfig --odgt"
#alias gpuclock="aticonfig --od-getclocks"

## BATTERY INFO
alias bat="upower --show-info /org/freedesktop/UPower/devices/battery_BAT0"
alias batr="upower --show-info /org/freedesktop/UPower/devices/battery_BAT0 | grep "time""
alias bat1="upower --show-info /org/freedesktop/UPower/devices/battery_BAT1"
alias batr1="upower --show-info /org/freedesktop/UPower/devices/battery_BAT1 | grep "time""

# '[r]emove [o]rphans' - recursively remove ALL orphaned packages
alias pacro="/usr/bin/pacman -Qtdq > /dev/null && sudo /usr/bin/pacman -Rs \$(/usr/bin/pacman -Qtdq | sed -e ':a;N;$!ba;s/\n/ /g')"
# }}}

# Nano(sudo)
alias nanos="sudo nano"

# Vim(sudo)
alias vims="sudo vim"

# Mplayer
alias play="mplayer -msgcolor -msgmodule"
alias playcd="mplayer cdda://"
#alias playcd="mplayer -cdrom-device /dev/sr0 cdda://"
#alias playdvd="mplayer dvd://"
alias playdvd="mplayer -mouse-movements dvdnav://"
alias playvcd="mplayer vcd://2"
alias takepic="mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video0 -fps 15 -vf screenshot"

# Webcam video capture
#alias webcam="mencoder tv:// -tv driver=v4l2:width=800:height=600:device=/dev/video0:fps=30:outfmt=yuy2:forceaudio:alsa:adevice=hw.0,0 -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=1800 -ffourcc xvid -oac mp3lame -lameopts cbr=128 -o output.avi"
alias webcam="ffmpeg -f alsa -i default -f v4l2 -s 640x480 -i /dev/video0 -acodec flac -vcodec libx264 output.mkv"

# BBC Radio
#bbcradio() { local s PS3="Select a station: ";select s in 1 1x 2 3 4 4x 5l 5lsp 6 "Asian Network an" "Nations & Local lcl";do break;done;s=($s);play -playlist "http://www.bbc.co.uk/radio/listen/live/r"${s[@]: -1}".asx";}
#alias bbclondon="play -playlist http://www.bbc.co.uk/radio/listen/live/bbclondon.asx"
#alias bbcworld="play -playlist http://www.bbc.co.uk/worldservice/meta/live/mp3/eneuk.pls"
alias bbcr1x='get_iplayer --stream --type=liveradio 80100 --modes=hlsaacstd --player="mplayer -cache 128 -"'
alias bbc5lx='get_iplayer --stream --type=liveradio 80101 --modes=hlsaacstd --player="mplayer -cache 128 -"'
alias bbclon='get_iplayer --stream --type=liveradio 80123 --modes=hlsaacstd --player="mplayer -cache 128 -"'
alias bbcr1='get_iplayer --stream --type=liveradio 80131 --modes=hlsaacstd --player="mplayer -cache 128 -"'
alias bbcr4='get_iplayer --stream --type=liveradio 80135 --modes=hlsaacstd --player="mplayer -cache 128 -"'
alias bbc5l='get_iplayer --stream --type=liveradio 80137 --modes=hlsaacstd --player="mplayer -cache 128 -"'
alias bbcworld='get_iplayer --stream --type=liveradio 80158 --modes=hlsaaclow2 --player="mplayer -cache 128 -"'

# xprop
alias xp='xprop | grep "WM_WINDOW_ROLE\|WM_CLASS" && echo "WM_CLASS(STRING) = \"NAME\", \"CLASS\""'

# anamnesis
alias clip="anamnesis -l 10"
alias clipb="anamnesis -b"

#xclip
alias clipboard='xclip -o'

# powerline
#if [ -f /usr/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh ]; then
#    source /usr/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh
#fi

# disk space
alias diskfree="df -ht ext4"

# disk usage
alias dusage="ncdu"

# pcinfo
alias pcinfo="inxi -v6 -c5"

# wireless network connection info
alias wifo="sudo iftop -i wlp3s0"
alias wifo2="slurm -i wlp3s0"

# monitor connections
alias netmon="netstat -nputwc"
alias nets='sudo netstat -nlptu'
alias nets2='sudo lsof -i'

# Look for high priority errors in the systemd journal
alias errors="sudo journalctl -p 0..3 -xn"

# systemd commands
alias start="sudo systemctl start"
alias stop="sudo systemctl stop"
alias status="systemctl status"

# google calender (gcalcli)
alias calm="gcalcli calm"
alias calw="gcalcli calw"
alias cald="gcalcli agenda"
alias calquick="gcalcli quick --calendar ''"
alias caladd="gcalcli add --calendar ''"

# httpd & mysqld
#alias starth="sudo systemctl start httpd"
#alias startm="sudo systemctl start mysqld"
#alias stoph="sudo systemctl stop httpd"
#alias stopm="sudo systemctl stop mysqld"

# xampp
alias starth="sudo /opt/lampp/lampp start"
alias stoph="sudo /opt/lampp/lampp stop"

# Disk activity
alias diskact="sudo iotop -Po"

# ccache
export USE_CCACHE=1

# todo
source ~/bin/todo_completion
export TODOTXT_DEFAULT_ACTION=ls
alias t='todo.sh -d ~/.todo/todo.cfg'
complete -F _todo t

# generate random password
alias genpass="strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 10 | tr -d '\n'; echo"

#cups
alias startprint="systemctl start org.cups.cupsd.service"
alias stopprint="systemctl stop org.cups.cupsd.service"

# Saves journal logs to file
getlog() { local file=~/logs/system/log-$(date +%Y%m%d-%H:%M).txt; sudo journalctl -b > "$file" && vim "$file"; }

#export commands
export PATH=${PATH}:~/bin
export PATH=${PATH}:~/.local/bin/
export PATH=${PATH}:~/downloads/android-dev/android-sdk/tools
export PATH=${PATH}:~/downloads/android-dev/android-sdk/platform-tools/
export PATH=$PATH:$HOME/.composer/vendor/bin
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export EDITOR="vim"
export BROWSER="chromium"
