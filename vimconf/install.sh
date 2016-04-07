#!/bin/sh
cd $(dirname "$0")
ln -fs $(pwd)/vimrc ~/.vimrc

if [ ! -d ~/.vim/bundle/vundle ]; then
    rm -rf ~/.vim/bundle/*
    git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
fi
ln -fs $(pwd)/misc ~/.vim/

vim +NeoBundleInstall +qall
