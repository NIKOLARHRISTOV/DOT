#!/bin/bash

DOTFILE="/d/Developer/Application/NikolaRHristov/Dotfile/"

rm ~/.aliases
rm ~/.bash_profile
rm ~/.bash_logout
rm ~/.bash_history_shared
rm ~/.bashrc
rm ~/.zshrc
rm ~/.config
rm ~/.functions
rm ~/.gitconfig
rm ~/.gitmessage
rm ~/Bash
rm ~/Powershell
rm ~/ZSH
rm ~/.ssh
rm ~/prettier.config.js
rm ~/rustfmt.toml
rm ~/tailwind.config.js
rm ~/rome.json
rm ~/biome.json

ln -s "$DOTFILE".aliases ~/.aliases
ln -s "$DOTFILE".bash_profile ~/.bash_profile
ln -s "$DOTFILE".bash_logout ~/.bash_logout
ln -s "$DOTFILE".bash_history_shared ~/.bash_history_shared
ln -s "$DOTFILE".zshrc ~/.zshrc
ln -s "$DOTFILE".bashrc ~/.bashrc
ln -s "$DOTFILE".config ~/.config
ln -s "$DOTFILE".functions ~/.functions
cp "$DOTFILE".gitconfig ~/.gitconfig
ln -s "$DOTFILE".gitmessage ~/.gitmessage
ln -s "$DOTFILE"Bash ~/Bash
ln -s "$DOTFILE"Powershell ~/Powershell
ln -s "$DOTFILE"ZSH ~/ZSH
ln -s /e/MEGA/PROJECTS/Personal/Credentials/Keys/SSH ~/.ssh
ln -s "$DOTFILE"prettier.config.js ~/prettier.config.js
ln -s "$DOTFILE"rome.json ~/rome.json
ln -s "$DOTFILE"biome.json ~/biome.json
ln -s "$DOTFILE"rustfmt.toml ~/rustfmt.toml
ln -s "$DOTFILE"tailwind.config.js ~/tailwind.config.js
