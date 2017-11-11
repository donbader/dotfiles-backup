#!/bin/bash

# Make ZSH as the default shell for the current user
sudo chsh -s /bin/zsh "`whoami`"

# Load all the zsh files in the ~/.zshrc
echo "# dotfiles zsh config" > ~/.zshrc
echo "source `pwd`/$(dirname $0)/main.zsh" >> ~/.zshrc


# update all submodules
git submodule update --init --recursive
git submodule foreach --recursive git pull origin master

reloadrc

