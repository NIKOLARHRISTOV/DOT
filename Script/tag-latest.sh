#!/usr/bin/env bash

DEVDIR="~/Developer/app"

mkdir -p $DEVDIR/"$USER"
cd $DEVDIR/"$USER" || exit

find -iname .git -execdir bash -c "${DEVDIR}"/NikolaRHristov/DotFile/Library/scripts/count.sh \;
