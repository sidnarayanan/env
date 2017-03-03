# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# User definitions 
if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
fi
if [ -f ~/.bash_t3 ]; then
        . ~/.bash_t3
fi
if [ -f ~/.bash_personal ]; then
        . ~/.bash_personal
fi

# User specific aliases and functions
export PATH="$HOME/bin:${PATH}"
export PATH=${HOME}/bin:${HOME}/.local/bin${PATH:+:$PATH}

[ -z "$PS1" ] && return

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

HISTSIZE=50000
HISTFILESIZE=2000
HISTCONTROL=ignoredups
shopt -s histappend
shopt -s checkwinsize

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
ssh-add ~/.ssh/id_rsa > /dev/null 2> /dev/null
