# Comment out to disable auto update. 
# Credit for update interval code: https://stackoverflow.com/a/16157488
TIMESTAMP_FILE=~/.dshell.updatetimestamp
date +"%Y%m%d" |         ## Generate timestamp
tee $TIMESTAMP_FILE.tmp |      ## Save a copy for later usage
cmp - $TIMESTAMP_FILE &> /dev/null ||       ## Fail if date-spec changed
{  
  ## Update timestamp and run code
  mv $TIMESTAMP_FILE.tmp $TIMESTAMP_FILE &&
  ~/.dshell/update.sh
}

# ZSH global settings
export ZSH=~/.oh-my-zsh
export UPDATE_ZSH_DAYS=5

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# ZSH settings
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="false"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="memes"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
plugins=(git docker osx)
source $ZSH/oh-my-zsh.sh

# User configuration
## Add ssh keys (-K ensures that passwords are loaded from keychain)
ssh-add -K ~/.ssh/id_rsa

## Useful aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -alh'

## Load custom configuration
source ~/.customrc

# Print banner if enough columns are available
if [[ $COLUMNS -gt 116 ]];
then
print $BLUE
cat <<-'EOF'
                    _   _                                       _                   _         _              _   _ 
                   | | | |                                     | |                 | |       | |            | | | |
 __      __   ___  | | | |   ___    ___    _ __ ___     ___    | |_    ___       __| |  ___  | |__     ___  | | | |
 \ \ /\ / /  / _ \ | | | |  / __|  / _ \  | '_ ` _ \   / _ \   | __|  / _ \     / _` | / __| | '_ \   / _ \ | | | |
  \ V  V /  |  __/ | | | | | (__  | (_) | | | | | | | |  __/   | |_  | (_) |   | (_| | \__ \ | | | | |  __/ | | | |
   \_/\_/    \___| |_| |_|  \___|  \___/  |_| |_| |_|  \___|    \__|  \___/     \____| |___/ |_| |_|  \___| |_| |_|
                                                                                                                   
                                                                                                                   
EOF
fi
