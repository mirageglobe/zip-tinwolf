#!/usr/bin/env bash

# ----- checking dependancies

command -v tt++ >/dev/null 2>&1 || { echo >&2 "tintin++ not installed. OSX: use brew install tt++. Aborting."; exit 1; }
command -v tmux >/dev/null 2>&1 || { echo >&2 "tmux not installed. OSX: use brew install tmux. Aborting."; exit 1; }
command -v watch >/dev/null 2>&1 || { echo >&2 "watch not installed. OSX: use brew install watch. Aborting."; exit 1; }

if [ ! -f settings-mini.tin ]; then
  echo "default settings-mini.tin not found. [abort]"
  exit 1
fi

# ----- adding tmp log environment files

touch chats.log
touch character.log
touch minimap.log
touch group.log
touch quest.log


# ----- adding user files

# naming it as txt so it does not look scary
touch mysettings.txt
touch mymap.txt

# ----- launch basic tintin

tt++ settings-mini.tin
