#!/bin/bash

VIM_PATH="~/.vim/pack/sour/start/"
mkdir -p $VIM_PATH
cd $VIM_PATH
git clone https://github.com/easymotion/vim-easymotion
git clone https://github.com/junegunn/fzf
git clone https://github.com/junegunn/fzf.vim
git clone https://github.com/junegunn/goyo.vim
git clone https://github.com/vim-airline/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes
git clone https://github.com/airblade/vim-gitgutter
git clone https://github.com/preservim/nerdtree
