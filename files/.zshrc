# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/fundor333/.oh-my-zsh"

ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  time     #
  vi_mode  # these sections will be
  user     # before prompt char
  host     #
  char
  dir
  git
  node
  ruby
  xcode
  swift
  golang
  docker
  venv
  pyenv
)

source $ZSH/oh-my-zsh.sh

SPACESHIP_CHAR_SYMBOL="(°,,,°) "

export PATH=/opt/flutter/bin:$PATH

alias ..='cd ..'
alias ...='cd ../..'
alias sl='ls'
alias ls='ls -GwF'
alias ll='ls -alh'
alias myip="curl http://ipecho.net/plain; echo"
alias start_server='python -m http.server 8888'
alias zshrc='code ~/.zshrc'
alias gitconfig='code ~/.gitconfig'


neofetch --config ~/.config/neofetch/config.conf 
bofh

