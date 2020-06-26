@echo off
 
DOSKEY ..='cd ..'
DOSKEY ...='cd ..\..'
DOSKEY sl='dir'
DOSKEY ls='dir'
DOSKEY ll='ls -alh'
DOSKEY myip="curl http://ipecho.net/plain; echo"
DOSKEY start_server='python -m http.server 8888'
DOSKEY zshrc='code ~/.zshrc'
DOSKEY gitconfig='code ~/.gitconfig'
DOSKEY sshconfig='code ~/.ssh/config'
