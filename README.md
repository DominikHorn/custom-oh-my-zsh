# Purpose of this project
This repository contains custom theme(s)/functions etc written by me for using [oh-my-zsh](https://github.com/ohmyzsh/) on *My local machines* with as little setup hassle as possible. One could say this is my terminal infrastructure as code setup.
No guarantees that these configurations work for anyone else, but they may provide a great starting point if you're looking for customization options.

# Installation
This section details how to install this software. Make sure to have zsh installed before running any scripts.

Run the following script to automatically setup [oh-my-zsh](https://github.com/ohmyzsh/) and this software:

```
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/DominikHorn/dshell/master/install.sh)"
```

# Updates
By default, custom oh-my-zsh will check for updates on every terminal launch. To disable this behaviour, edit `.zshrc`.
Manual updates may be done by executing the `update.sh` script either locally or by running the following command:

```
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/DominikHorn/dshell/master/update.sh)"
```
