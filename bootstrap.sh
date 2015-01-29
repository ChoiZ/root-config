#!/bin/bash

echo "Update apt repository"
apt-get update

echo "Upgrade apt repository"
apt-get upgrade

echo "Setup programs"
apt-get install \
	claws-mail \
	clementine \
	ctags \
	curl \
	git \
	htop \
	ffmpeg \
	mysql-server-5.5 \
	openssh-server \
	php5-cli php5-dev php5-imagick php5-memcache php5-mysql php5-pgsql \
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
root_dotfiles="/root/.dotfiles" 
git clone https://github.com/ChoiZ/root-config.git $root_dotfiles

echo "Copy fonts"
cp "$root_dotfiles"/fonts/Monaco-Powerline.otf /usr/share/fonts/
fc-cache -vf

echo "Copy slim configuration"
cp "$root_dotfiles"/slim.conf /etc/slim.conf
