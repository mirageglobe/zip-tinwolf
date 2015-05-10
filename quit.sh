#!/usr/bin/env bash

command -v tmux >/dev/null 2>&1 || { echo >&2 "tmux not installed. brew install tmux. Aborting."; exit 1; }

tmux kill-session -t aardwolf

