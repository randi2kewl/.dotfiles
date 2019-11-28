#!/bin/bash

# This script creates symlinks for the dot files to override defaults 
# with the ones existing in this repo.

echo "Creating symlinks..."

cd ..

path=$(pwd)

if test $(which zsh); then
    ln -f -s "$path/.zshrc" ~/.zshrc
fi

ln -f -s "$path/.vimrc" ~/.vimrc
ln -f -s "$path/.tmux.conf" ~/.tmux.conf

