#!/usr/bin/env bash

# shellcheck disable=SC1090
# shellcheck disable=SC3046
source ~/.aliases
source ~/.functions

sshagent_init >/dev/null 2>&1

exec ssh "$@"
