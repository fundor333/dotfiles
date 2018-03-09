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
