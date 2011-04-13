# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH=$PATH:~/.dropbox-dist:~/.scripts

# Preload the LibGL plugin
LD_PRELOAD=/usr/lib/libGL.so.1
