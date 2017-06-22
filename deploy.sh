# Symlink all of our dotfiles to the home directory
for i in .vimrc .dircolors .bashrc .bash_profile;
do
    cp $i $HOME/$i
done
