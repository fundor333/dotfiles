CONFIG_DIR =./config
PYTHON_DIR =./python 

zsh:
	@chsh -s $(which zsh)
	@git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
	@ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

python:
	@pip2 install -r ${PYTHON_DIR}/requirements.txt
	@pip3 install -r ${PYTHON_DIR}/requirements3.txt

apt:
	@apt-get install --yes curl
	@apt-get install --yes wget
	@apt-get install --yes dpkg
	@apt-get install --yes tar
	@apt-get install --yes nano
	@apt-get install --yes zsh
	@apt-get install --yes emacs
	@apt-get install --yes lftp
	@apt-get install --yes w3m-img
	@apt-get install --yes neofetch
	@apt-get install --yes openssh-client
	@apt-get install --yes ffmpeg
	@apt-get install --yes git git-core git-svn git-flow
	@apt-get install --yes gcc
	@apt-get install --yes build-essential
	@apt-get install --yes default-jdk

golang:
	@mkdir ~/Coding/GoStuff
	@echo "GOPATH=$HOME/Coding/GoStuff" >> ~/.bashrc
	@echo "export GOPATH" >> ~/.bashrc
	@echo "PATH=\$PATH:\$GOPATH/bin
	@source ~/.bashrc

config:
	@cp ${HOME}/.bash_profile ${CONFIG_DIR}/bash_profile
	@cp ${HOME}/.bashrc ${CONFIG_DIR}/bashrc
	@cp ${HOME}/.editorconfig ${CONFIG_DIR}/editorconfig
	@cp ${HOME}/.gitconfig ${CONFIG_DIR}/gitconfig
	@cp ${HOME}/.irbrc ${CONFIG_DIR}/irbrc
	@cp ${HOME}/.zshrc ${CONFIG_DIR}/zshrc
	@cp ${HOME}/.config/neofetch ${CONFIG_DIR}/neofetch
	@cp ${HOME}/.config/darktable ${CONFIG_DIR}/darktable
	@git clone https://github.com/fundor333/emacs.d.git "${HOME}/.emacs"

end:
	@echo "We made it!"
	@curl -L http://git.io/unix
