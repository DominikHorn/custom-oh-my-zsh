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
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Comment out to disable auto update
~/.custom-oh-my-zsh/update.sh &> /dev/null &

# User configuration
## Add ssh keys (-K ensures that passwords are loaded from keychain)
ssh-add -K ~/.ssh/id_rsa

## Useful aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -alh'

## Load custom configuration
source ~/.customrc
