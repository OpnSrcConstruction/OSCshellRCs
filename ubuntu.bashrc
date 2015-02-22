
~/.bashrc: executed by bash(1) for non-login shells.
see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
for examples
If not running interactively, don't do anything

[ -z "$PS1" ] && return
don't put duplicate lines or lines starting with space in the history.
See bash(1) for more options

HISTCONTROL=ignoreboth
append to the history file, don't overwrite it

shopt -s histappend
for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

HISTSIZE=50
HISTFILESIZE=50
check the window size after each command and, if necessary,
update the values of LINES and COLUMNS.

shopt -s checkwinsize
If set, the pattern "**" used in a pathname expansion context will
match all files and zero or more directories and subdirectories.

#shopt -s globstar
make less more friendly for non-text input files, see lesspipe(1)

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
set variable identifying the chroot you work in (used in the prompt below)

if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
debian_chroot=$(cat /etc/debian_chroot)
fi
set a fancy prompt (non-color, unless we know we "want" color)

case "$TERM" in
xterm-color) color_prompt=yes;;
esac
uncomment for a colored prompt, if the terminal has the capability; turned
off by default to not distract the user: the focus in a terminal window
should be on the output of commands, not on the prompt

#force_color_prompt=yes

PROMPT_COMMAND='acpi -btc'

if [ -n "$force_color_prompt" ]; then
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
# We have color support; assume it's compliant with Ecma-48
# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
# a case would tend to support setf rather than setaf.)
color_prompt=yes
else
color_prompt=
fi
fi

if [ "$color_prompt" = yes ]; then
PS1='${debian_chroot:+($debian_chroot)}[\033[01;32m]\u@\h[\033[00m]:[\033[01;34m]\w[\033[00m]\$ '
else
PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt
If this is an xterm set the title to user@host:dir

case "$TERM" in
xterm|rxvt)
PS1="[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a]$PS1"
;;
*)
;;
esac
enable color support of ls and also add handy aliases

if [ -x /usr/bin/dircolors ]; then
test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
alias ls='ls --color=auto'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

fi
some more ls aliases

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
Add an "alert" alias for long running commands. Use like so:
sleep 10; alert

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s[0-9]+\s//;s/[;&|]\s*alert$//'\'')"'
Alias definitions.
You may want to put all your additions into a separate file like
~/.bash_aliases, instead of adding them here directly.
See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi
enable programmable completion features (you don't need to enable
this, if it's already enabled in /etc/bash.bashrc and /etc/profile
sources /etc/bash.bashrc).

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
. /etc/bash_completion
fi
Append commands to the history every time a prompt is shown,
instead of after closing the session.

PROMPT_COMMAND='history -a'
Change the default Bash_prompts

PS1="\j-!-#-\H\w-\d_\@|\n\$>"
PS2="\j-!-#-\H\w-\d_\@|\n\$<"

alias wget="wget -c"
alias bc="bc -l"
alias mkdir="mkdir -pv"
alias diff="colordiff"
Set emacs to always run as command line application

alias emacs='emacs -nw'
Set the default editor to vim.

export EDITOR=vim
#
##
alias vi=vim
alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'
##
#
alias numF="echo $(ls -1 | wc -l)" #Count the number of files in current directory
alias pinGoo='ping -s.1 google.com'
alias bye='exit'
alias Exit='exit'
alias EXIT='exit'
alias clr='clear'
alias del='rm'
alias delete='rm'
alias copy='cp'
alias up='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'
alias ....='cd ../../../..'
alias .....='cd ../../../../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias dir='ls'
alias md='mkdir -p'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias bc='bc -l'
alias mkdir='mkdir -pv'
alias diff='colordiff'
alias mount='mount |column -t'
alias path='echo -e ${PATH//:/\n}'
alias now='date +"%T'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias vi='vim'
alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'
alias fastping='ping -c 100 -s.2' #ping every tenth of a second#
alias ping='ping -c 5' #stopping pings after 5#
alias ports='netstat -tulanp' #show open ports on your system#
alias ipt='sudo /sbin/iptables'
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall='iptlist'
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias root='sudo -i'
alias su='sudo -i'
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'
alias meminfo='free -m -l -t'
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
alias cpuinfo='lscpu'
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
alias wget='wget -c'
alias df='df -H'
alias du='du -ch'
alias Dox='cd ~/Documents'
alias Pix='cd ~/Pictures'
alias Desk='cd ~/Desktop'
alias Down='cd ~/Downloads'
alias Video='cd ~/Videos'
alias Audio='cd ~/Audio'
alias Pub='cd ~/Public'
alias One='cd ~/Ubuntu One'
alias Drive='cd ~/gdrive'
alias Linux='cd /media/Linux'
alias Vault='cd ~/Ubuntu One/vault'
alias arp-scan='sudo arp-scan -l -I wlan0'
alias reload='. ~/.bashrc' #reloads the
alias upd='sudo apt-get update' #updates the systems available repository software#
alias Upd='sudo apt-get update && sudo apt-get upgrade' #single command update#
alias UpD='sudo apt-get update && sudo apt-get dist-upgrade' #single command full update#
alias UpDy='sudo apt-get update && sudo apt-get dist-upgrade -y' #forcefully single command full update#
alias fix='sudo apt-get -f install' #fix dependency issues#
alias install='sudo apt-get install' #Installs software & needed dependencies#
alias addR='sudo add-apt-repository' #add 3rd party repository#
alias instaly='sudo apt-get install -y' #force install application#
alias remove='sudo apt-get remove' #removes an application and dependencies#
alias purge='sudo apt-get purge' #uninstall a package & it's .config files#
alias check='sudo apt-get check' #check for broken dependencies#
alias download='sudo apt-get download' #downloads the .deb from the on-line repositories to the current working directory#
alias clean='sudo apt-get clean' #completely clears the package cache#
alias Aclean='sudo apt-get autoclean' #cleans all outdated .debs from the package cache#
alias showdeps='sudo apt-cache showpkg' #shows dependancy information#
alias stats='sudo apt-cache stats' #shows the status of the package database#
alias depends='sudo apt-cache depends' #displays the dependancies of a package#
alias rdepends='sudo apt-cache rdepends' #displayes the reverse-dependancies of a package#
alias search='sudo apt-cache search' #seach the cache of available packages#
alias show='sudo apt-cache show -f' #Show's detailed package information#
alias Asearch='sudo aptitude search' #searches for if a package is installed on your system#
alias Dins='dpkg -i' #installs an individual package or group of packages, without any dependency checking#
alias Drm='sudo dpkg -r' #removes an individual .deb or group of .debs, w/o any dependency checking#
alias Dpurge='sudo dpkg -p' #purges an individual .deb#
alias unpack='sudo dpkg --unpack' #unpacks an uncompressed .deb#
alias config='sudo dpkg --configure' #configure an unconfigured pacage#
alias reconfA='sudo dpkg --reconfigure -a' #re-configure a packages initial wizzard#
alias triggers='sudo dpkg --triggers-only' #processes the triggers for your package(s)#
alias y2UP='sudo dpkg --yet-to-unpack' #shows uncompressed packages on your system#
alias List='sudo dpkg-query -L' #list files installed by a package#
alias LsInS='sudo dpkg-query -l' #list if a pkg is installed or not#
alias Dprint='sudo dpkg-query -p' #prints a working description#
alias nmcliV='sudo nmcli con up id MateVPN'
alias jbLive='livestreamer rtmp://jblive.videocdn.scaleengine.net/jb-live/play/jblive.stream worst --player=vlc'
alias cmi="./configure && make && sudo make install" #Common steps to install package from source code.
alias gmemnfo='grep -i --color memory /var/log/Xorg.0.log' ## get GPU ram on desktop / laptop##
#single-letter aliases
#
##
alias x='exit'
alias s='sudo'
alias c='clear'
alias r='reset'
alias h='history'
alias j='jobs -l'
alias l='ls'
###
##
#
system-state aliases

##
###
alias reBoot='sudo /sbin/shutdown -r now'
alias pwrOff='sudo /sbin/shutdown -h now'
alias halt='sudo /sbin/halt'
alias sleep='sudo pm-suspend'
alias sleepy='sudo pm-hibernate'
alias sleepE='sudo pm-suspend-hybrid'
alias lock='gnome-screensaver-command --lock'
###
##
#

#youtube-dl aliases
##
###
alias ylf='youtube-dl --list-formats' #followed by video(s)URL#
alias ytdl='youtube-dl -tiAf' #followed by desired format and video(s)URL#
alias ydl43='youtube-dl -tiAf 43' #download the video(s) in webm format.
alias ydl18='youtube-dl -tiAf 18' #download the video(s) in mp4 format.
alias ydl5='youtube-dl -tiAf 5' #download the video(s) in flash format.
alias ydS43@='youtube-dl -tiAf 43 --playlist-start'
#(webm)followed by video N + video URL.Use --playlist-end to specify ending video N#
alias ydS18@='youtube-dl -tiAf 18 --playlist-start'
#(mpeg4)followed by video N + video URL.Use --playlist-end to specify ending video N#
alias ydS5@='youtube-dl -tiAf 5 --playlist-start'
#(flash)followed by video N + video URL.Use --playlist-end to specify ending video N#
###
##
#
NetworkManager aliases

##
###
alias nmWl='nmcli -tpm dev wifi list'
alias nmnm='nmcli -ypm nm status list'
alias nmSlp='nmcli -tpm nm sleep'
alias nmE='nmcli -tpm nm enable'
alias nmWi='nmcli -tpm nm wifi'
alias nmCls='nmcli -tpm con'
alias nmCup='nmcli -tpm con up id'
alias nmCudn='nmcli -tpm con down id'
alias nmNew='nmcli -tpm dev wifi connect'
