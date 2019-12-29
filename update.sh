#!/bin/zsh

RED="\033[1;31m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
BLUE="\033[1;34m"
NO_COLOR="\033[0m"

CUSTOM_DIR=~/.custom-oh-my-zsh

print $BLUE "Fetching updates for custom oh my-zsh from remote..." $NO_COLOR
git -C $CUSTOM_DIR fetch
CHANGE_LOG=$(curl -sSf https://raw.githubusercontent.com/DominikHorn/custom-oh-my-zsh/master/update.sh &> /dev/null \
             && git -C $CUSTOM_DIR log --no-decorate --no-merges --pretty="format:%s%b" ..origin/master \
                | awk '{printf "%d. %s\n", NR, $0}')

# Exit early if network down
if [[ ! $? == 0 ]];
then
   print $RED "Network appears to be down, can not fetch updates from remote" $NO_COLOR
   exit -1
fi

if [[ -z $CHANGE_LOG ]];
then 
   print $BLUE "Already up to date" $NO_COLOR
   exit 0
else 
  git -C $CUSTOM_DIR pull &> /dev/null
fi

# Actually install updates
print $BLUE "Installing updates..."
zsh -c $CUSTOM_DIR/install.sh

# Print change log
print $BLUE "Have fun with the following changes :)" $NO_COLOR
print $CHANGE_LOG
