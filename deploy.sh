# Add solarized colors for vim if not present
if [ ! -f $HOME/.vim/colors/solarized.vim ]; then
    curl -s -fLo $HOME/.vim/colors/solarized.vim --create-dirs \
    https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim
fi

# Add Dustin's syntax highlights for Bro
for i in ftdetect syntax; do
    if [ ! -f $HOME/.vim/$i/bro.vim ]; then
        curl -s -fLo $HOME/.vim/$i/bro.vim --create-dirs \
        https://raw.githubusercontent.com/mephux/bro.vim/master/$i/bro.vim
    fi
done

# Symlink all of our dotfiles to the home directory
for i in .vimrc .dircolors .bashrc .bash_profile;
do
    cp $i $HOME/$i
done
