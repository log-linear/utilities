#!/bin/sh

# Basic boot script for a new Ubuntu install

# Install micro editor
sudo snap install micro --classic

# Install neofetch
sudo apt-get update
sudo apt-get install neofetch

# Pull dotfiles
git clone https://gitlab.com/y_hat/dotfiles.git
mv -r dotfiles/* ~/
rm -r dotfiles
source .bashrc
source .bash_aliases
source .profile
source .selected_editor
