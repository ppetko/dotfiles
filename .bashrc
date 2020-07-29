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

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Tab complete sudo commands
complete -cf sudo

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

function parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' 
}

#_ps1_symbol='\[\e[38;2;0;255;0;48;2;70;70;70m\] \$ \[\e[0m\]\[\e[38;2;70;70;70m\]\[\e[0m\]'
#export PS1='\[\e]0;\w\a\]\[\e[38;2;40;40;40;48;2;153;204;255m\] \u\[\e[38;2;255;57;57;48;2;153;204;255m\]  \[\e[0m\]\[\e[38;2;40;40;40;48;2;153;204;255m\]\h \[\e[0m\]\[\e[38;2;153;204;255;48;2;255;150;50m\]\[\e[0m\]\[\e[38;2;40;40;40;48;2;255;150;50m\] \W \[\e[0m\]\[\e[38;2;255;150;50;48;2;70;70;70m\]\[\e[0m\]$(__git_ps1 "\[\e[38;2;0;255;0;48;2;70;70;70m\] %s \[\e[0m\]\[\e[38;2;0;0;0;48;2;70;70;70m\] \[\e[0m\]")'"${_ps1_symbol}"' '

_ps1_symbol='\[\e[38;2;0;255;0;48;2;70;70;70m\] \$ \[\e[0m\]\[\e[38;2;70;70;70m\]\[\e[0m\]'
export PS1='\[\e]0;\w\a\]\[\e[38;2;40;40;40;48;2;153;204;255m\] \u\[\e[38;2;255;57;57;48;2;153;204;255m\]  \[\e[0m\]\[\e[38;2;40;40;40;48;2;153;204;255m\]\h \[\e[0m\]\[\e[38;2;153;204;255;48;2;255;150;50m\]\[\e[0m\]\[\e[38;2;40;40;40;48;2;255;150;50m\] \W \[\e[0m\]\[\e[38;2;255;150;50;48;2;70;70;70m\]\[\e[0m\]\[\e[38;2;0;255;0;48;2;70;70;70m\]$(parse_git_branch) \[\e[0m\]\[\e[38;2;0;0;0;48;2;70;70;70m\] \[\e[0m\]'"${_ps1_symbol}"' '



# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

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
