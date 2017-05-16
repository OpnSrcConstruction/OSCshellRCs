# Please use this file for adding any/all aliases
# file started by kjlw99 on 2-14-15 @ 1:46PM

#reloads the .bashrc configuration script
alias rld='. ~/.bashrc' 
###
##
# Set emacs to always run as command line application
#alias emacs='emacs -nw'
###
##
#
# Set the default editor to vim.
#export EDITOR=vim
###
##
# vim aliases
#alias vi=vim
##alias svi='sudo vi'
#alias vis='vim "+set si"'
#alias edit='vim'
###
##
# command usability feature aliases
alias wget="wget -c"
alias bc="bc -l"
alias mkdir="mkdir -pv"
###
##
# Shell helper aliases
alias bye='exit' 
alias Exit='exit'
alias EXIT='exit'
alias clr='clear'
# reset the shell
alias res='reset'
# display paths to system/user binaries/scripts.
alias path='echo -e ${PATH//:/\\n}'
# File management aliases
# file-system navigation
alias up='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'
alias ....='cd ../../../..'
alias .....='cd ../../../../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias dox='cd ~/Documents'
alias pix='cd ~/Pictures'
alias desk='cd ~/Desktop'
alias down='cd ~/Downloads'
alias vid='cd ~/Videos'
alias audio='cd ~/Audio'
alias pub='cd ~/Public'
alias drive='cd ~/gdrive'
alias Linux='cd /media/Linux'
# list files/directories(Dos-mode)
alias dir='ls'
# create directories
alias md='mkdir -p'
alias mkdir='mkdir -pv'
# deletion
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias delete='rm'
alias del='rm'
# Create symbolic || hard links
alias ln='ln -i'
# Directory/file size(usage) info. w/ grand total, in human readable format; for all files/directories.
alias du='du -cha'
#Count the number of files in current directory
alias numF="echo $(ls -1 | wc -l)" 
#partition information
alias df='df -H'
alias mount='mount |column -t'
###
##
# Permission aliases
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias root='sudo -i'
alias su='sudo -i'
alias reboot='sudo /sbin/reboot'
###
##
# System state aliases
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'
alias reBoot='sudo /sbin/shutdown -r now'
alias pwrOff='sudo /sbin/shutdown -h now'
alias halt='sudo /sbin/halt'
alias sleep='sudo pm-suspend'
alias sleepy='sudo pm-hibernate'
alias sleepE='sudo pm-suspend-hybrid'
###
##
# System Information aliases
# memory information
alias meminfo='free -m -l -t'
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
# cpu information.
alias cpuinfo='lscpu'
# process information
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
###
##
#single-letter aliases
alias x='exit'
alias s='sudo'
alias c='clear'
alias r='reset'
alias h='history'
alias j='jobs -l'
alias l='ls'
###
##
#youtube-dl aliases 
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
# livestreamer shortcut for jblive.tv
alias jbLive='livestreamer rtmp://jblive.videocdn.scaleengine.net/jb-live/play/jblive.stream worst --player=vlc'
###
##
# Networking aliases
# Ping utility aliases
alias fastping='ping -c 100 -s.2' #ping every tenth of a second#
alias ping='ping -c 5' #stopping pings after 5 seconds
alias pinGoo='ping -s.1 google.com'
# netstat utility alias.
alias ports='netstat -tulanp' #show open ports on your system#
# IPtables firewall shortcuts.
alias ipt='sudo /sbin/iptables'
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall='iptlist'
###
##
# NetworkManager aliases 
alias nmWl='nmcli -tpm dev wifi list'
alias nmnm='nmcli -ypm nm status list' 
alias nmSlp='nmcli -tpm nm sleep' 
alias nmE='nmcli -tpm nm enable' 
alias nmWi='nmcli -tpm nm wifi' 
alias nmCls='nmcli -tpm con' 
alias nmCup='nmcli -tpm con up id' 
alias nmCudn='nmcli -tpm con down id'
alias nmNew='nmcli -tpm dev wifi connect'
###
##
# Time/Date aliases.
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
###
##
#
# Software management
# Common steps to install package from source code.
alias cmi="./configure && make && sudo make install"    
