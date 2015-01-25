#!/bin/bash

echo "Update apt repository"
apt-get update

echo "Upgrade apt repository"
apt-get upgrade

echo "Setup programs"
apt-get install \
	claws-mail \
	clementine \
	git \
	htop \
	ffmpeg \
	openssh-server \
	simple-scan \
	slim \
	scrot \
	sshfs \
	urlview \
	vim-gtk \
	virtualbox \
	xclip \
	xpdf \
	xfce4 xfce4-goodies \
	zsh

echo "Clone dotroot files"
root_dotfiles="/root/.dotroot" 
git clone https://github.com/ChoiZ/dotroot.git $root_dotfiles

echo "Copy fonts"
cp "$root_dotfiles"/fonts/Monaco-Powerline.otf /usr/share/fonts/
fc-cache -vf

echo "Copy slim configuration"
ln -s "$root_dotfiles"/slim.conf /etc/slim.conf
