# dotfiles

My personal dotfile for my Linux Debian Based pc
Make with the bot https://github.com/anishathalye/dotbot

For Linux you need to launch

    ./install-profile linux

For Mac you need to launch

    ./install-profile mac

For Windows you need to launch on GitBash as administrator

    export MSYS=winsymlinks:nativestrict
    ./install-profile windows --no-color windows

# in User Preferences (Global)

https://supunkavinda.blog/vscode-editing-settings-json

You can change the settings.json from your user preferences. This changes are global. Therefore it will affect all of your projects. Here are 2 ways to reach that global settings.json file.

    File -> Preferences -> Settings -> Extensions -> Scroll down and find "Edit in settings.json"
    Or in these paths in your OS
        Windows %APPDATA%\Code\User\settings.json
        macOS $HOME/Library/Application Support/Code/User/settings.json
        Linux $HOME/.config/Code/User/settings.json

You can add the settings to this file (may be given by a extension) and make all of these settings global.
