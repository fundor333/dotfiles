# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# All spaceship stuff
ZSH_THEME="powerlevel10k"

SPACESHIP_PROMPT_ORDER=(
	time      # Time stamps section
	user      # Username section
	dir       # Current directory section
	host      # Hostname section
	git       # Git section (git_branch + git_status)
	hg        # Mercurial section (hg_branch  + hg_status)
	package   # Package version
	node      # Node.js section
	ruby      # Ruby section
	elixir    # Elixir section
	xcode     # Xcode section
	swift     # Swift section
	golang    # Go section
	php       # PHP section
	rust      # Rust section
	haskell   # Haskell Stack section
	julia     # Julia section
	docker    # Docker section
	aws       # Amazon Web Services section
	venv      # virtualenv section
	conda     # conda virtualenv section
	pyenv     # Pyenv section
	dotnet    # .NET section
	ember     # Ember.js section
	kubectl   # Kubectl context section
	terraform # Terraform workspace section
	exec_time # Execution time
	line_sep  # Line break
	battery   # Battery level and status
	vi_mode   # Vi-mode indicator
	jobs      # Background jobs indicator
	exit_code # Exit code section
	char      # Prompt character
)

VAR=$(smileemoji)
SPACESHIP_CHAR_SYMBOL=$VAR

# Plugins stuff
plugins=(zsh-autosuggestions zsh-syntax-highlighting bofh django smile git docker git-flow pipenv python ssh-agent)

autoload -Uz compinit && compinit

zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

source ~/.zsh_aliases

source $ZSH/oh-my-zsh.sh

# golang
# export $HOME/.gostuff
# export PATH=\$PATH:\$GOPATH/bin

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
