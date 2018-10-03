#!/bin/bash

# Detect the platform 
OS="`uname`"
case $OS in
  'Linux')
    OS='Linux'
    alias ls='ls --color=auto'
    ;;
  'Darwin') 
    OS='Mac'
    ;;
  *) ;;
esac

if [ "${OS}" == "Linux" ]; then

	for i in .vimrc .dircolors .bashrc .bash_profile .gitconfig ; 
	do
	    cp $i $HOME/$i
	done

	cp -rf ./vim $HOME/.vim
	cp .go.vim $HOME/.vim/syntax/go.vim

	source  ~/.bashrc


elif  [ "${OS}" == "Darwin" ]
then
	echo "implement mac os dotfiles"
fi
