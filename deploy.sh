# Download bunch of colors 
git clone https://github.com/flazz/vim-colorschemes.git
cp vim-colorschemes/colors/*  ~/.vim/colors/
rm -rf vim-colorschemes/

# Install onedark theme
git clone https://github.com/joshdick/onedark.vim
cp  onedark.vim/colors/onedark.vim  ~/.vim/colors/
cp onedark.vim/autoload/onedark.vim  ~/.vim/autoload/
rm -rf onedark.vim/

## Install powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1 && cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# Copy all of our dotfiles to the home directory
for i in .vimrc .dircolors .bashrc .bash_profile .gitconfig .go.vim; 
do
    cp $i $HOME/$i
done

source  ~/.bashrc
