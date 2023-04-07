#!/bin/bash

# Exits if user is not on a Linux system.
if [ "$(uname)" != "Linux" ]
then
	echo "bad"
fi

# Makes .TRASH directory and suppresses error message if it already exists.
mkdir -p ~/.TRASH

# Renames .vimrc and sends message to log.
if [ -f ~/.vimrc ]
then
	mv ~/.vimrc .bup_vimrc
	echo ".vimrc was changed to .bup_vimcrc" >> linuxsetup.log
fi

# Overwrites .vimrc file with contents of etc/vimrc.
cat ~/.dotfiles/etc/vimrc > ~/.vimrc

# Adds statement to the end of .bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
