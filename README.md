# root-config

## Setup

### Curl

	sh <(curl https://raw.github.com/ChoiZ/root-config/master/bootstrap.sh -L)

### Git + Bash

Clone git repository:

	git clone https://www.github.com/ChoiZ/root-config.git /root/.dotfiles

Copy fonts / configuration files:

	cp /root/.dotfiles/fonts/Monaco-Powerline.otf /usr/share/fonts/
	fc-cache -vf
	cp /root/.dotfiles/slim.conf /etc/slim.conf
