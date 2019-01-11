sudo apt install vim
cp vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# install glang complete
#cd ~/.vim/bundle
#git clone https://github.com/Valloric/YouCompleteMe.git
#cd YouCompleteMe
#git submodule update --init --recursive
#./install.sh --clang-completer
