# .bash_aliases

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
alias grpe='grep'
alias hgrep='history | grep'
alias psgrep='ps U ${USER} | grep'
alias hgrpe='history | grep'
alias psgrpe='ps U ${USER} | grep'
alias root='root -l'
alias rootbbq='root -b -q'
alias cleanup='rm -f *.pcm *_C.d *_C.so *.pyc *_cc.d *_cc.so *.pyo'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias goddammit='sudo'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias t3btch='ssh snarayan@t3btch101.mit.edu'
alias t3desk='ssh snarayan@t3desk001.mit.edu'
alias t3home='ssh snarayan@t3home000.mit.edu'
alias t3serv012='ssh snarayan@t3serv012.mit.edu'
alias xt3home='xeno ssh snarayan@t3home000.mit.edu'
alias xt3desk='xeno ssh snarayan@t3desk001.mit.edu'
alias t3desk6='ssh snarayan@t3desk006.mit.edu'
alias xt3desk6='xeno ssh snarayan@t3desk006.mit.edu'
alias t3desk11='ssh snarayan@t3desk011.mit.edu'
alias xt3desk11='xeno ssh snarayan@t3desk011.mit.edu'
alias sub='ssh snarayan@submit.mit.edu'
alias t3sub='ssh snarayan@t3btch100.mit.edu'
alias t3serv='ssh snarayan@t3serv012.mit.edu'
alias lxplus='ssh snarayan@lxplus.cern.ch'
alias lxplusY='ssh -Y snarayan@lxplus.cern.ch'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias sshx='ssh -Y'

function rl {
  export f=$(readlink -f $1);
  echo $f;
}  

function calc {
  echo "scale = 10; $@" | bc
}
