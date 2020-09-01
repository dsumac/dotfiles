# dsumac dotfiles 

My dotfiles config.

## Installation

TODO

- clone (or download) repository project
- install zsh if it's not installed
- install oh_my_zsh (TODO: remove this dependency)
- install tmux
- install tpm
- install stow & stow the wanted configs
  - stow zsh
  - stow git
  - stow tmux
- modify your zsh config 

TODO: make a script to install

### zsh configuration

<code>
# PATH
BIN_PATH=~/dotfiles/bin
# unversionned config, for company ...
BIN_LOCAL_PATH=~/dotfiles/.local/bin
export PATH=~/.local/bin:$BIN_PATH:$BIN_LOCAL_PATH:$PATH

# Splash login screen
~/dotfiles/bin/unix
echo "\n"
echo "Welcome at home $USERNAME, we are: `date +'%d/%m/%Y %T'`"

# aliases
source ~/dotfiles/aliases/aliases

# env
source ~/dotfiles/env/env

# unversioned local config
# if you want add special compagny config for example
ZSH_LOCAL_FILE=~/dotfiles/zsh/.zshrc.pmu.local
if [ -f "$ZSH_LOCAL_FILE" ]; then
    echo "Local config file found"
    echo " => Source file: $ZSH_LOCAL_FILE"
    source $ZSH_LOCAL_FILE;
fi
</code>

### Tmux
This tmux config use [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm).
- [install tpm](https://github.com/tmux-plugins/tpm#installation)
- [install plugins](https://github.com/tmux-plugins/tpm#installing-plugins) defined in config.

## Organization

### Special directories

- `aliases`: shell aliases
- `bin`: some binaries (fun or not)
- `docs`: some documentations
- `env`: environment variables

## Thanks

I found inspiration in few projects:
 
- xero dotfiles:
https://github.com/xero/dotfiles

- gnu stow:
https://www.gnu.org/software/stow/

## TODO
- prerequisite
- list of software

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright (c) dsumac

