#!/bin/bash

#remove home directory .nanorc
rm ~/.nanorc

#remove last line of .bashrc
sed -i "/source \~\/.dotfiles\/etc\/bashrc_custom/d" ~/.bashrc

#remove .TRASH directory
rm -rf ~/.TRASH

