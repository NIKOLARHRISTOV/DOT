#!/bin/bash

# shellcheck disable=SC1090
# shellcheck disable=SC3010
[[ -f ~/.bashrc ]] && . ~/.bashrc

# shellcheck disable=SC1091
[[ -f $HOME/.nix-profile/etc/profile.d/nix.sh ]] && . "$HOME"/.nix-profile/etc/profile.d/nix.sh
