# Purpose of this project
This repository contains custom theme(s)/functions etc written by me for [oh my zsh](https://github.com/ohmyzsh/). See their website and guides for more in depth explanations

# Installation
This section details how to install the (various) customizations found in this repo. Make sure to have zsh installed before running any scripts.

Run the following script to install [oh my zsh](https://github.com/ohmyzsh/) and all customizations from this repo

```
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/DominikHorn/custom-oh-my-zsh/master/install.sh)"
```

# Updates
By default, custom oh my zsh will check for updates on every terminal launch. To disable this behaviour, edit `.zshrc`.
Manual updates may be done by executing the `update.sh` script either locally or by running the following command:

```
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/DominikHorn/custom-oh-my-zsh/master/update.sh)"
```
