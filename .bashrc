# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User definitions 
if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
fi
if [ -f ~/.bash_t3 ]; then
        . ~/.bash_t3
fi

# User specific aliases and functions
export PATH="$HOME/bin:${PATH}"

[ -z "$PS1" ] && return

HISTSIZE=500000
HISTFILESIZE=20000
HISTCONTROL=ignoredups
shopt -s histappend

force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        color_prompt=yes
    else
        color_prompt=no
    fi
fi
color_prompt=yes
if [ "$HOSTNAME" = "t3desk001.mit.edu" ]; then
    PROMPTCOLOR=35
elif [ "$HOSTNAME" = "t3desk006.mit.edu" ]; then
    PROMPTCOLOR=105
elif [ "$HOSTNAME" = "t3desk011.mit.edu" ]; then
    PROMPTCOLOR=105
else
    PROMPTCOLOR=31
fi
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}[\[\033[00;${PROMPTCOLOR}m\]\u@\h\[\033[10m\] \[\033[00;${PROMPTCOLOR}m\]$(shorten_path \w 20)\[\033[00m\]]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt
. ~/.short-prompt.sh

unset SSH_ASKPASS
export EDITOR='vim'

set -o vi
