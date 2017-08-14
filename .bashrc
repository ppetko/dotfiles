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

git_branch=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')
total_files=$(/bin/ls -1 | /usr/bin/wc -l)
dir_size=$(/bin/ls -lah | /usr/bin/grep -m 1 total | /bin/sed 's/total //')

## PS1
STARTCOLOR='\e[33m';
ENDCOLOR="\e[0m"
PS1="\[\`if [[ \$? = "0" ]]; then
        echo '$STARTCOLOR╔ǁ\u$ENDCOLOR@\e[32m\h\e[0m';
else
        echo '$STARTCOLOR╔ǁ\u@$ENDCOLOR\e[31m\h\e[0m';
fi \`:\w $total_files files, \$dir_size $STARTCOLOR\${git_branch}$ENDCOLOR\n╚═>"

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
