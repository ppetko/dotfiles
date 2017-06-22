# Download bunch of colors 
git clone https://github.com/flazz/vim-colorschemes.git colors
cp  colors/* ~/.vim/colors/

# Copy all of our dotfiles to the home directory
for i in .vimrc .dircolors .bashrc .bash_profile;
do
    cp $i $HOME/$i
done

source  ~/.bashr
