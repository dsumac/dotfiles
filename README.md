# dsumac dotfiles

My dotfiles config.

## Installation

- clone (or download) repository project in home directory
- install zsh (if it's not installed)
- install oh_my_zsh (TODO: remove this dependency)
- install tmux
  - [install tpm](https://github.com/tmux-plugins/tpm#installation)
  - [install tmux plugins](https://github.com/tmux-plugins/tpm#installing-plugins)
- install stow
- stow the wanted configs
  - stow zsh
    - `stow -t ~ zsh`
  - stow tmux
    - `stow -t ~ tmux`
  - stow vim
    - `stow -t ~ vim`
  - stow git
  - stow terminator
  - stow vscode
  - stow cmus
  - stow newsboat config
    `stow -t ~/.newsboat newsboat`
- other (fun or not) tools:

  - cowsay
  - python for httpServe aliases

- create $HOME/projects dir if it does not exist

## Configuration

There are some **special directories.**
You must **not stow** theses directories / files.

| Directory | Information                                                                   |
| --------- | ----------------------------------------------------------------------------- |
| `aliases` | some aliases. Add a \*.alias file and the aliases will be automatically added |
| `bin`     | binaries. Add binaries tools here                                             |
| `docs`    | misc docs on tools & other                                                    |
| `env`     | Add a .env file and the env vars will be automatically added                  |
| `install` | All tooling about installation                                                |

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
- make a script to build host file
- prerequisite
- list of software

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright (c) dsumac
