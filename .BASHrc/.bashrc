# main pointer file, that will source "." the bash_projectMain.pointer
# file inside of the ~/OSCshellRCs directory.
# The main idea behind the levels of sourced files is easier debugging,
# than a huge .bashrc and easier configuring for varied
# environments.

if [ -f ~/OSCshellRCs/.BASHrc/bash_projectMain.pointer ]; then
    . ~/OSCshellRCs/.BASHrc/bash_projectMain.pointer
fi
