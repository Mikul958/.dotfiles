# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.
## ./bin/linux.sh
Creates a .TRASH directory, renames .vimrc to .bup_vimrc, overwrites .vimrc with a custom vimrc file in ./etc, and adds "source ~/.dotfiles/etc/bashrc_custom" to the end of .bashrc.
## ./bin/cleanup.sh
Effectively reverses the changes made by linux.sh, with the exception that .bup_vimrc is not deleted.
## Makefile
Runs cleanup.sh, followed by linux.sh.
