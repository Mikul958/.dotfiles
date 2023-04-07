#!/bin/bash

# Removes .vimrc in home directory
rm ~/.vimrc

# Removes "source ~/..." statement from .bashrc
sed -i "s/source ~\/\.dotfiles\/etc\/bashrc_custom//" ~/.bashrc

# Removes .TRASH
rm -rf ~/.TRASH
