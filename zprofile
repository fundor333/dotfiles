# If you come from bash you might have to change your $PATH.

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/Library/Frameworks/Python.framework/Versions/3.8/bin:$PATH

# Mac Fix
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

# My script
export PATH="$PATH:$HOME/.script"

export EDITOR=nano
export VISUAL="$EDITOR"

source ~/.profile
eval "$(/opt/homebrew/bin/brew shellenv)"
