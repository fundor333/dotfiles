![Logo](https://fundor333.com/img/pilogo.jpg)
# dotfiles

[![wakatime](https://wakatime.com/badge/github/fundor333/dotfiles.svg)](https://wakatime.com/badge/github/fundor333/dotfiles)

My personal dotfile for my Linux, Mac, Windows workstation.
Make with the bot [Dotbot](https://github.com/anishathalye/dotbot).

For Linux you need to launch

    make linux

For Mac you need to launch

    make mac

For Windows you need to launch on GitBash as administrator

    export MSYS=winsymlinks:nativestrict
    ./install-profile windows

## Git

My personal git settings. Some personal aliases, some config and a generic gitignore

## ZSH PowerLevel10K

My preferred shell. I use the PowerLevel10K with some plugin so here there is the plugin as a submodule of this repo.

## SSH

My SSH config. I assume to use OpenSSH at the last STABLE version

## .editorconfig

One of the base of my dev setup.
Using [this](https://editorconfig.org/) with your Ide (with a plugin or without it) you will have the same code style on all the platform.
