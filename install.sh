#!/bin/zsh

RED="\033[1;31m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
NO_COLOR="\033[0m"
OH_MY_ZSH_DIR=~/.oh-my-zsh
CUSTOM_DIR=~/.custom-oh-my-zsh
ZSHRC=~/.zshrc
ZSHRC_BACKUP=~/.zshrc-backup-pre-custom-oh-my-zsh
CUSTOMRC=~/.customrc

# Install oh my zsh if not present
if [[ ! -d $OH_MY_ZSH_DIR ]];
then
  print $YELLOW "Installing oh-my-zsh on system" $NO_COLOR
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Clone repo if not present (i.e., install script downloaded and executed separatelly)
if [[ ! -d "$CUSTOM_DIR" ]];
then
  print $YELLOW "Cloning repository since no copy was found locally" $NO_COLOR
  git clone https://github.com/DominikHorn/custom-oh-my-zsh.git $CUSTOM_DIR
fi

if [[ -e "$ZSHRC" ]];
then
  if [[ ! -e "$ZSHRC_BACKUP" ]];
  then
    # Backup old .zshrc if present
    print $YELLOW "Replacing '$ZSHRC' Old file may be found under $ZSHRC_BACKUP" $NO_COLOR
    mv $ZSHRC $ZSHRC_BACKUP

    # Install custom .zshrc
    ln $CUSTOM_DIR/zshrc "$ZSHRC"
    print $YELLOW "Installed custom $ZSHRC. Please add applicable custom configuration to $CUSTOMRC" $NO_COLOR
  else
    print $RED "Assuming custom oh my zsh is alread installed since both $ZSHRC and $ZSHRC_BACKUP exit" $NO_COLOR
  fi
fi

# Link all themes into the themes folder
find $CUSTOM_DIR/themes/*.zsh-theme -exec ln -f {} $OH_MY_ZSH_DIR/themes \;
print $GREEN "Linked all themes. You may now set one of the custom themes by editing the $ZSHRC file" $NO_COLOR

# Reload configuration
source $ZSHRC
