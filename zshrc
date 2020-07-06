# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.oh-my-zsh-custom"

# All spaceship stuff
ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  dotnet        # .NET section
  ember         # Ember.js section
  kubectl       # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

source $ZSH/oh-my-zsh.sh

# Mac Fix
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

# My script
export PATH="$PATH:$HOME/script"

VAR=$(smileemoji)
SPACESHIP_CHAR_SYMBOL=$VAR

# Plugins stuff
plugins=(
  git
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
  jsontools
  node
  pip
  web-search
  zsh-autosuggestions
  zsh-syntax-highlighting
  colored-man-pages
  colorize
  common-aliases
  copyfile
)

autoload -Uz compinit && compinit

zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)


# golang
# export $HOME/.gostuff
# export PATH=\$PATH:\$GOPATH/bin

# Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias sl='ls'
alias ls='ls -GwF'
alias ll='ls -alh'
alias myip="curl http://ipecho.net/plain; echo"
alias start_server='python -m http.server 8888'
alias zshrc='code ~/.zshrc'
alias gitconfig='code ~/.gitconfig'
alias sshconfig='code ~/.ssh/config'
alias dotfiles='code ~/Coding/dotfiles'

# Start command
bofh
