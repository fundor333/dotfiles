CONFIG_DIR =./config
PYTHON_DIR =./python 

config:
	@cp ${HOME}/.bash_profile ${CONFIG_DIR}/bash_profile
	@cp ${HOME}/.bashrc ${CONFIG_DIR}/bashrc
	@cp ${HOME}/.editorconfig ${CONFIG_DIR}/editorconfig
	@cp ${HOME}/.gitconfig ${CONFIG_DIR}/gitconfig
	@cp ${HOME}/.irbrc ${CONFIG_DIR}/irbrc
	@cp ${HOME}/.zshrc ${CONFIG_DIR}/zshrc
	@git clone https://github.com/fundor333/emacs.d.git "${HOME}/.emacs"

zsh:
	@chsh -s $(which zsh)
	@git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
	@ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
