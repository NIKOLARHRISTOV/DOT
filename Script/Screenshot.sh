#!/usr/bin/env bash

# shellcheck disable=SC2016
scrot -z '%Y-%m-%d_%H-%M-%S.png' -e 'mv $f ~/Pictures/Screenshots'
