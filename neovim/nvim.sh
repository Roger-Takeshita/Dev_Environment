#!/bin/bash

FILE_PATH=$(realpath $0)
ROOT_PATH=$(dirname $FILE_PATH)

brew install neovim
mkdir ~/.config
mkdir ~/.config/nvim
mkdir ~/.config/nvim/keys
mkdir ~/.config/nvim/general
cp "${ROOT_PATH}/init.vim" ~/.config/nvim
cp "${ROOT_PATH}/settings.vim" ~/.config/nvim/general
cp "${ROOT_PATH}/mappings.vim" ~/.config/nvim/keys
cd ~/.config/nvim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir ~/.config/nvim/vim-plug
cp "${ROOT_PATH}/plugins.vim" ~/.config/nvim/vim-plug
