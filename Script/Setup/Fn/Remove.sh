#!/usr/bin/env bash

Current=$(\cd -- "$(\dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && \pwd)

rm -rf ~/.aliases
rm -rf ~/.bash_history_shared
rm -rf ~/.bash_logout
rm -rf ~/.bash_profile
rm -rf ~/.bash-preexec.sh
rm -rf ~/.bashrc
rm -rf ~/.config
rm -rf ~/.functions
rm -rf ~/.gitconfig
rm -rf ~/.gitmessage
rm -rf ~/.ssh
rm -rf ~/.zshrc
rm -rf ~/Bash
rm -rf ~/biome.json
rm -rf ~/PowerShell
rm -rf ~/prettier.config.js
rm -rf ~/rome.json
rm -rf ~/rustfmt.toml
rm -rf ~/tailwind.config.js
rm -rf ~/ZSH
