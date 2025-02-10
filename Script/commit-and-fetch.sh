#!/usr/bin/env bash

cd /d/Developer || exit

PRun -p -f .git git add .
PRun -p -f .git git ecommit -m squash!
PRun -p -f .git git sync
PRun -p -f .git git fetch upstream
PRun -p -f .git git merge upstream/main
PRun -p -f .git git sync

PRun -p .git git add .
PRun -p .git git ecommit -m squash!
PRun -p .git git sync
PRun -p .git git fetch upstream
PRun -p .git git merge upstream/main
PRun -p .git git sync
