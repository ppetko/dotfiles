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

parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' 
}

##_ps1_symbol='\[\e[38;2;0;255;0;48;2;70;70;70m\] \$ \[\e[0m\]\[\e[38;2;70;70;70m\]\[\e[0m\]'
export PS1='\[\e]0;\w\a\]\[\e[38;2;40;40;40;48;2;153;204;255m\] \u\[\e[38;2;255;57;57;48;2;153;204;255m\]  \[\e[0m\]\[\e[38;2;40;40;40;48;2;153;204;255m\]\h \[\e[0m\]\[\e[38;2;153;204;255;48;2;255;150;50m\]\[\e[0m\]\[\e[38;2;40;40;40;48;2;255;150;50m\] \W \[\e[0m\]\[\e[38;2;255;150;50;48;2;70;70;70m\]\[\e[0m\]$(parse_git_branch)"\[\e[38;2;0;255;0;48;2;70;70;70m\] %s \[\e[0m\]\[\e[38;2;0;0;0;48;2;70;70;70m\] \[\e[0m\]") '

## PS1
#STARTCOLOR='\e[33m';
#ENDCOLOR="\e[0m"
#PS1="\[\`if [[ \$? = "0" ]]; then
#        echo '$STARTCOLOR╔ǁ\u$ENDCOLOR@\e[32m\h\e[0m';
#else
#        echo '$STARTCOLOR╔ǁ\u@$ENDCOLOR\[\e[38;2;0;0;0;48;2;70;70;70m\] \[\e[0m\]';
#fi \`:\w \$(/bin/ls -1 | /usr/bin/wc -l) files, \$(/bin/ls -lah | /usr/bin/grep -m 1 total | /bin/sed 's/total //') $STARTCOLOR $(parse_git_branch) $ENDCOLOR \n╚═>"


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
