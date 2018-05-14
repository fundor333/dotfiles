CONFIG_DIR =./config
PYTHON_DIR =./python

help:
	@echo 'Makefile for my personal dotfiles'
	@echo ""
	@echo 'Usage:'
	@echo '	make configsetup	Setting all the configs'
	@echo '	make apt		Install all the needed packages'
	@echo '	make configsetup	Setting all the configs'
	@echo '	make zsh		Adding the ZSH stuff'
	@echo '	make pyinstall		Install all the module for python 2 and 3'
	@echo '	make end              Test for the installazione'
	@echo '                                                                          '

configsetup:
	cp -r "./bin" "${HOME}/bin"
	mkdir ${HOME}/Coding/GoStuff
	cd config; for file in *;do cp -r "$$file" "${HOME}/.$$file";done
	git clone https://github.com/fundor333/emacs.d.git "${HOME}/.emacs"
	curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
	mkdir -p ~/.local/share/fonts
	for type in Bold Light Medium Regular Retina; do
	    wget -O ~/.local/share/fonts/FiraCode-${type}.ttf \
	    "https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-${type}.ttf?raw=true";
	done
	fc-cache -f

apt:
	echo "Need sudo"
	cat apt.txt | xargs sudo apt-get install -y

zsh:
	echo "Work only on ZSH terminal"
	chsh -s $(which zsh)
	git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
	ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

pyinstall:
	echo "Need sudo"
	sudo pip2 install -r ${PYTHON_DIR}/requirements2.txt
	sudo pip3 install -r ${PYTHON_DIR}/requirements3.txt
	jt -t oceans16

end:
	echo "We made it!"
	curl -L http://git.io/unix
