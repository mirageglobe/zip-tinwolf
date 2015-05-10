#!/usr/bin/env bash

# ----- checking dependancies

command -v tt++ >/dev/null 2>&1 || { echo >&2 "tintin++ not installed. OSX: use brew install tt++. Aborting."; exit 1; }
command -v tmux >/dev/null 2>&1 || { echo >&2 "tmux not installed. OSX: use brew install tmux. Aborting."; exit 1; }
command -v watch >/dev/null 2>&1 || { echo >&2 "watch not installed. OSX: use brew install watch. Aborting."; exit 1; }

if [ ! -f settings.tin ]; then
  echo "default settings.tin not found. [abort]"
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

# ----- tmux and layout

tmux kill-session -t aardwolf
tmux start-server
tmux new-session -d -s aardwolf
tmux rename-window -t aardwolf:0 main
tmux select-window -t main

# split for sidebar
# 1st is group info
tmux split-window -h -l 40 'watch -n 0.1 -d cat group.log' \

# 2nd is quest info
tmux split-window -v -l 30 'watch -n 0.1 -d cat quest.log' \

# 3rd is character info
tmux split-window -v -l 25 'watch -n 0.1 -d cat character.log' \

# 4th is minimap
tmux split-window -v -l 15 'watch -n 0.1 -d cat minimap.log' \

# select main pane
tmux select-pane -t 0

# split for main top bar
tmux split-window -v -l 37 'watch -n 0.1 -d cat chats.log' \

# the main bar
tmux split-window -v -l 25 'tt++ settings-tmux.tin' \

tmux set-option -g mouse-select-pane on
tmux set-option -g mouse-resize-pane on

tmux -2 attach-session -t aardwolf
