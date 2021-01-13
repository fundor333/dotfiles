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

VAR=$(smileemoji)
SPACESHIP_CHAR_SYMBOL=$VAR

# Plugins stuff
plugins=( zsh-autosuggestions zsh-syntax-highlighting bofh django smile git docker git-flow pipenv python ssh-agent)

autoload -Uz compinit && compinit

zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

source $ZSH/oh-my-zsh.sh

# golang
# export $HOME/.gostuff
# export PATH=\$PATH:\$GOPATH/bin

# Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias sl='ls'
alias ll='ls -alh'
alias myip="curl http://ipecho.net/plain; echo"
alias start_server='python -m http.server 8888'
alias zshrc='code ~/.zshrc'
alias gitconfig='code ~/.gitconfig'
alias sshconfig='code ~/.ssh/config'
alias dotfiles='code ~/Coding/dotfiles'
alias ducks='du -cks * | sort -rn | head'
alias python=/usr/local/bin/python3.8

# Start command
bofh
