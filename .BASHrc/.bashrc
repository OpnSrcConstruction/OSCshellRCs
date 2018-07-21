# main pointer file, that will source "." the bash_projectMain.pointer
# file inside of the ~/OSCshellRCs directory.
# The main idea behind the levels of sourced files is easier debugging,
# than a huge .bashrc and easier configuring for varied
# environments.

# added Sunday, July 08 2018 @ 06:52:22 PM
# sets a ascii system info on first tty launch
neofetch

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

if [ -f ~/OSCshellRCs/.BASHrc/bash_projectMain.pointer ]; then
    . ~/OSCshellRCs/.BASHrc/bash_projectMain.pointer
fi

# mv -v ~/.bashrc ~/.bashrc.original && cp -v ~/OSCshellRCs/.BASHrc/.bashrc ~/
# . ~/.bashrc
