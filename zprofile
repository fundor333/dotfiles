# If you come from bash you might have to change your $PATH.

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/Library/Frameworks/Python.framework/Versions/3.8/bin:$PATH


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.oh-my-zsh-custom"

# Mac Fix
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

# My script
export PATH="$PATH:$HOME/script"

export EDITOR=nano
export VISUAL="$EDITOR"

# Setting PATH for Python 3.7
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
