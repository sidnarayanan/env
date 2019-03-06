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
if [ -f ~/.bash_work ]; then
        . ~/.bash_work
fi
if [ -f ~/.bash_personal ]; then
        . ~/.bash_personal
fi
if [ -f ~/.bash_submit ]; then
        . ~/.bash_submit
fi

# User specific aliases and functions
export PATH="$HOME/bin:${PATH}"

[ -z "$PS1" ] && return

HISTSIZE=500000
HISTFILESIZE=200000
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
