# dsumac dotfiles 

My dotfiles config.

## Installation

- clone (or download) repository project
- install zsh (if it's not installed)
- install oh_my_zsh (TODO: remove this dependency)
- install tmux
- install tpm
- install stow
- stow the wanted configs
  - stow zsh
  - stow git
  - stow tmux

## Configuration

There are some **special directories.**
You must **not stow** theses directories / files.

| Directory | Information |
|-----------|-------------|
| `aliases` | some aliases. Add a file *.alias file and the aliases will be automatically taken into account. You can modify an existing file too  |
| `bin` | binaries. Add binaries tools here |
| `docs` | misc docs on tools & other |
| `env` | Add a .env file and the env vars will be automatically taken into account  |


### Tmux
This tmux config use [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm).
- [install tpm](https://github.com/tmux-plugins/tpm#installation)
- [install plugins](https://github.com/tmux-plugins/tpm#installing-plugins) defined in config.


## Thanks

I found inspiration in few projects:
 
- xero dotfiles:
https://github.com/xero/dotfiles

- gnu stow:
https://www.gnu.org/software/stow/

## TODO
- make a script to install
- prerequisite
- list of software

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright (c) dsumac

