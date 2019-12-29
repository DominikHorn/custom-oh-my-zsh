#!/bin/zsh

RED="\033[1;31m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
NO_COLOR="\033[0m"

CUSTOM_DIR=~/.custom-oh-my-zsh

print "Fetching updates from remote..."
git -C $CUSTOM_DIR fetch
CHANGE_LOG=$(git -C $CUSTOM_DIR log --no-decorate --no-merges --pretty="format:%s%b" ..origin/master | awk '{printf "%d. %s\n", NR, $0}')
if [[ -z $CHANGE_LOG ]];
then 
   print $YELLOW "Already up to date" $NO_COLOR
   exit 0
else 
  git -C $CUSTOM_DIR pull
fi

# Actually install updates
print "Installing updates..."
zsh -c $CUSTOM_DIR/install.sh

# Print change log
print $GREEN "Updates successfully installed. Have fun with the following changes :)" $NO_COLOR
print $CHANGE_LOG
