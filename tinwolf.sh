#!/usr/bin/env bash

# ----- functions

function checkapp {
  command -v $1 >/dev/null 2>&1 || { echo >&2 "$1 not installed. OSX: use brew install $1. Aborting."; exit 1; }
}

function checkfile {
  if [ ! -f $1 ]; then
    echo "$1 not found. [abort]"
    exit 1
  else
    echo "$1 found. [ok]"
  fi
}

# ----- checking dependancies

echo "---------------"
echo "    Tinwolf    "
echo "---------------"

echo "checking dependancy apps..."
checkapp tt++

echo "checking dependancy files..."
checkfile settings.txt
checkfile config.tin

# ----- adding tmp log environment files

touch viewchats.log
touch viewstats.log
touch viewminimap.log
touch viewgroup.log
touch viewquest.log


# ----- adding user files

# naming it as txt so it does not look scary
touch settings.txt
touch map.txt

# ----- launch basic tintin

tt++ config.tin
