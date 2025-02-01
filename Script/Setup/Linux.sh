#!/bin/bash

Current=$(\cd -- "$(\dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && \pwd)

rm -rf ~/.aliases
rm -rf ~/.bash_profile
rm -rf ~/.bash_logout
rm -rf ~/.bash_history_shared
rm -rf ~/.bashrc
rm -rf ~/.zshrc
rm -rf ~/.config
rm -rf ~/.functions
rm -rf ~/.gitconfig
rm -rf ~/.gitmessage
rm -rf ~/Bash
rm -rf ~/PowerShell
rm -rf ~/ZSH
rm -rf ~/prettier.config.js
rm -rf ~/rustfmt.toml
rm -rf ~/tailwind.config.js
rm -rf ~/rome.json
rm -rf ~/biome.json

DOTFILE="$HOME/Developer/Application/NikolaRHristov/DotFile/"

ln -s "$DOTFILE".aliases ~/.aliases
ln -s "$DOTFILE".bash_profile ~/.bash_profile
ln -s "$DOTFILE".bash_logout ~/.bash_logout
ln -s "$DOTFILE".bash_history_shared ~/.bash_history_shared
ln -s "$DOTFILE".zshrc ~/.zshrc
ln -s "$DOTFILE".bashrc ~/.bashrc
ln -s "$DOTFILE".functions ~/.functions
cp "$DOTFILE".gitconfig ~/.gitconfig
ln -s "$DOTFILE".gitmessage ~/.gitmessage
ln -s "$DOTFILE"prettier.config.js ~/prettier.config.js
ln -s "$DOTFILE"rome.json ~/rome.json
ln -s "$DOTFILE"biome.json ~/biome.json
ln -s "$DOTFILE"rustfmt.toml ~/rustfmt.toml
ln -s "$DOTFILE"tailwind.config.js ~/tailwind.config.js
ln -s "$DOTFILE".config ~/.config
ln -s "$DOTFILE"Bash ~/Bash
ln -s "$DOTFILE"PowerShell ~/PowerShell
ln -s "$DOTFILE"ZSH ~/ZSH
