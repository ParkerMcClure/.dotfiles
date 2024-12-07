#!/bin/bash

#Check that operating system is Linux
if [ "$(uname)" != "Linux" ]; then
	echo "Operating system not Linux" >> ./bin/linuxsetup.log
	exit 1
fi

#Create .TRASH directory
mkdir -p ~/.TRASH

#Rename .nanorc, if it exists
if [ -f "~/.nanorc" ]; then
	mv ~/.nanorc ~/.bup_nanorc
	echo "Current .nanorc file was renamed to '.bupnanorc'" >> ./bin/linuxsetup.log
fi

#Redirect etc/nanorc content to .nanorc in home directory
cat ./etc/nanorc > ~/.nanorc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

