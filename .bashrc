#!/bin/bash
case $- in
*i*) ;;
*) return ;;
esac

[[ -f ${WSLENV+} ]] && export PATH="$PATH:$HOME/.config/xclip"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
export DO_NOT_TRACK=1
export PATH=$PATH:/usr/local/go/bin
export OSH=~/Bash

# shellcheck disable=SC2034
OSH_THEME="half-life"
# shellcheck disable=SC2034
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# shellcheck disable=SC2034
DISABLE_AUTO_UPDATE="true"
# export UPDATE_OSH_DAYS=13
# shellcheck disable=SC2034
DISABLE_LS_COLORS="false"
# shellcheck disable=SC2034
DISABLE_AUTO_TITLE="false"
# shellcheck disable=SC2034
ENABLE_CORRECTION="false"
# shellcheck disable=SC2034
COMPLETION_WAITING_DOTS="false"
# shellcheck disable=SC2034
DISABLE_UNTRACKED_FILES_DIRTY="false"
# shellcheck disable=SC2034
HIST_STAMPS="mm/dd/yyyy"
# OMB_DEFAULT_ALIASES="check"
# OSH_CUSTOM=/path/to/new-custom-folder
# OMB_USE_SUDO=true

# shellcheck disable=SC2034
completions=(
	composer
	defaults
	dirs
	docker
	docker-compose
	gh
	git
	npm
	pip
	pip3
	ssh
	terraform
)

# shellcheck disable=SC2034
aliases=(
	general
)

# shellcheck disable=SC2034
plugins=(
	git
	bashmarks
	npm
	progress
)

#  if [ "$DISPLAY" ] || [ "$SSH" ]; then
#      plugins+=(tmux-autoattach)
#  fi

# shellcheck source=/dev/null
[[ -f "$OSH/oh-my-bash.sh" ]] && . "$OSH/oh-my-bash.sh"

# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='nano'
else
	export EDITOR='nano'
fi

export ARCHFLAGS="-arch x86_64"

if [[ $PS1 && -f ~/.config/Completion/bash_completion ]]; then
	# shellcheck source=/dev/null
	. ~/.config/Completion/bash_completion
fi

if [[ $PS1 && -f /usr/share/Completion/bash_completion ]]; then
	# shellcheck source=/dev/null
	. /usr/share/Completion/bash_completion
fi

# shellcheck source=/dev/null
[[ -f "$HOME/.cargo/env" ]] && . "$HOME/.cargo/env"

export PATH="$PATH:$HOME/.cargo/bin"

# shellcheck source=/dev/null
[[ -f "$NVM_DIR/nvm.sh" ]] && . "$NVM_DIR/nvm.sh"

# shellcheck source=/dev/null
[[ -f "$NVM_DIR/bash_completion" ]] && . "$NVM_DIR/bash_completion"

# shellcheck source=/dev/null
[[ -f ~/.aliases ]] && . ~/.aliases

# shellcheck source=/dev/null
[[ -f ~/.functions ]] && . ~/.functions

export PATH="$HOME/.bin:$PATH"
export AWS_CLI_AUTO_PROMPT=on-partial

# Telemetry
export ADBLOCK=true
export TELEMETRY_DISABLED=1
export ASTRO_TELEMETRY_DISABLED=1
export AUTOMATEDLAB_TELEMETRY_OPTOUT=1
export AZURE_CORE_COLLECT_TELEMETRY=0
export CHOOSENIM_NO_ANALYTICS=1
export DIEZ_DO_NOT_TRACK=1
export DO_NOT_TRACK=1
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_INTERACTIVE_CLI_TELEMETRY_OPTOUT=1
export ET_NO_TELEMETRY=1
export GATSBY_TELEMETRY_DISABLED=1
export GATSBY_TELEMETRY_OPT_OUT=1
export GATSBY_TELEMETRY_OPTOUT=1
export HASURA_GRAPHQL_ENABLE_TELEMETRY=false
export HINT_TELEMETRY=off
export HOMEBREW_NO_ANALYTICS=1
export INFLUXD_REPORTING_DISABLED=true
export ITERATIVE_DO_NOT_TRACK=1
export NEXT_TELEMETRY_DEBUG=1
export NEXT_TELEMETRY_DISABLED=1
export NG_CLI_ANALYTICS=false
export NUXT_TELEMETRY_DISABLED=1
export PIN_DO_NOT_TRACK=1
export POWERSHELL_TELEMETRY_OPTOUT=1
export SAM_CLI_TELEMETRY=0
export STNOUPGRADE=1
export STRIPE_CLI_TELEMETRY_OPTOUT=1
export TERRAFORM_TELEMETRY=0
export VCPKG_DISABLE_METRICS=1

# Turso
export PATH="$HOME/.turso:$PATH"

export RUSTC_WRAPPER=sccache

shopt -s histappend
HISTFILE="$HOME/.bash_history_shared"
HISTSIZE=1000
HISTFILESIZE=10000
# shellcheck disable=SC2034
SAVEHIST=1000

# shellcheck disable=SC1090
[[ -f ~/.bash-preexec.sh ]] && . ~/.bash-preexec.sh

set +o noclobber

# shellcheck disable=SC1091
[ -f "$HOME/.grit/bin/env" ] && . "$HOME/.grit/bin/env"

export PATH="/var/lib/snapd/snap/bin:$PATH"

GPG_TTY=$(tty)

export GPG_TTY

gpgconf --launch gpg-agent

export GPG_AGENT_INFO
