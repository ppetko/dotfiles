# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Put bash in vim mode
set -o vi

# dircolors
if [ -e ~/.dircolors ]
then
      eval `dircolors -b ~/.dircolors`
fi

# Tab complete sudo commands
complete -cf sudo

## TODO Automatically install golang
export GOROOT=/home/$USER/bin/go/
export PATH=$PATH:$GOROOT/bin
export GOPATH=/home/$USER/gocode/
export PATH=$GOPATH/bin:$PATH

export PATH=$PATH:/usr/local/go/bin

# Reset
RESET="\[\033[0m\]"

# Regular Colors
BLACK="\[\033[0;30m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"
WHITE="\[\033[0;37m\]"

## PS1
STARTCOLOR='\e[33m';
ENDCOLOR="\e[0m"
PS1="\[\`if [[ \$? = "0" ]]; then
        echo '$STARTCOLOR╔ǁ\u$ENDCOLOR@\e[32m\h\e[0m';
else
        echo '$STARTCOLOR╔ǁ\u@$ENDCOLOR\e[31m\h\e[0m';
    fi \`:\w \$(/bin/ls -1 | /usr/bin/wc -l) files, \$(/bin/ls -lah | /usr/bin/grep -m 1 total | /bin/sed 's/total //') $STARTCOLOR \$(git branch 2>/dev/null | sed -n '/^\*/s/^\* //p') $ENDCOLOR \n╚═>"


## Alias
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ls='ls --color=auto'
alias ll='ls -la'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias h='history'
alias c='clear'
