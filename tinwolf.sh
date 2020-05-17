#!/bin/sh

# ----- functions

checkapp() {
  if command -v "$1" > /dev/null 2>&1; then
    printf "\\n software found"
  else
    printf "\\n app not installed. OSX: use brew install %s or LINUX: apt install %s. Aborting." "$1" "$1"
    exit 1
  fi
}

checkfile() {
  if [ ! -f "$1" ]; then
    printf "\\n%s not found. [abort]" "$1"
    exit 1
  else
    printf "\\n%s found. [ok]" "$1"
  fi
}

# ----- checking dependancies

printf "\\n---------------"
printf "\\n    Tinwolf    "
printf "\\n---------------"

printf "\\nchecking dependancy apps..."
checkapp tt++

printf "\\nchecking dependancy files..."
touch map.txt
checkfile map.txt
checkfile common.conf

# ----- adding tmp log environment files

touch log-chats.txt           # chat log
touch log-stats.txt           # stats and map in one long page

# ----- launch basic tintin

tt++ common.conf

