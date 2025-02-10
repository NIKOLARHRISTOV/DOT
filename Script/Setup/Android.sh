#!/usr/bin/env bash

Current=$(\cd -- "$(\dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && \pwd)

# shellcheck disable=SC1091
source "$Current/Fn/Remove.sh"

DOTFILE="$HOME/Developer/Application/NikolaRHristov/DotFile/"

cp "$DOTFILE".aliases ~/.aliases
cp "$DOTFILE".bash_profile ~/.bash_profile
cp "$DOTFILE".bash_logout ~/.bash_logout
cp "$DOTFILE".bash_history_shared ~/.bash_history_shared
cp "$DOTFILE".zshrc ~/.zshrc
cp "$DOTFILE".bashrc ~/.bashrc
cp "$DOTFILE".functions ~/.functions
cp "$DOTFILE".gitconfig ~/.gitconfig
cp "$DOTFILE".gitmessage ~/.gitmessage
cp "$DOTFILE"prettier.config.js ~/prettier.config.js
cp "$DOTFILE"rome.json ~/rome.json
cp "$DOTFILE"biome.json ~/biome.json
cp "$DOTFILE"rustfmt.toml ~/rustfmt.toml
cp "$DOTFILE"tailwind.config.js ~/tailwind.config.js
cp "$DOTFILE".config ~/.config
cp "$DOTFILE"Bash ~/Bash
cp "$DOTFILE"PowerShell ~/PowerShell
cp "$DOTFILE"ZSH ~/ZSH

# rm ~/Developer/.clang-format
# rm ~/Developer/.csharpierrc
# rm ~/Developer/.editorconfig
# rm ~/Developer/.jshintrc
# rm ~/Developer/.npmrc
# rm ~/Developer/.prettierignore
# rm ~/Developer/.stylua.toml
# rm ~/Developer/jsconfig.json
# rm ~/Developer/rome.json
# rm ~/Developer/biome.json
# rm ~/Developer/rustfmt.toml
# rm ~/Developer/tsconfig.json

# ln -s "$DOTFILE".clang-format ~/Developer/.clang-format
# ln -s "$DOTFILE".csharpierrc ~/Developer/.csharpierrc
# ln -s "$DOTFILE".editorconfig ~/Developer/.editorconfig
# ln -s "$DOTFILE".jshintrc ~/Developer/.jshintrc
# ln -s "$DOTFILE".npmrc ~/Developer/.npmrc
# ln -s "$DOTFILE".prettierignore ~/Developer/.prettierignore
# ln -s "$DOTFILE".stylua.toml ~/Developer/.stylua.toml
# ln -s "$DOTFILE"jsconfig.json ~/Developer/jsconfig.json
# ln -s "$DOTFILE"rome.json ~/Developer/rome.json
# ln -s "$DOTFILE"biome.json ~/Developer/biome.json
# ln -s "$DOTFILE"rustfmt.toml ~/Developer/rustfmt.toml
# ln -s "$DOTFILE"tsconfig.json ~/Developer/tsconfig.json
