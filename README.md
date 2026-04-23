# dsumac dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Prerequisites

- [zsh](https://www.zsh.org/)
- [oh-my-zsh](https://ohmyz.sh/)
- [GNU Stow](https://www.gnu.org/software/stow/)
- [tmux](https://github.com/tmux/tmux)
    - [tpm](https://github.com/tmux-plugins/tpm)
- `cowsay`, `python3` (for `httpServe` alias)

## Installation

```sh
git clone https://github.com/dsumac/dotfiles ~/dotfiles
cd ~/dotfiles
```

Then stow the configs you want:

```sh
stow zsh
stow tmux
stow vim
stow git
stow vscode
stow cmus
stow -t ~/.newsboat newsboat
```

Finally, create the projects directory if it does not exist:

```sh
mkdir -p ~/projects
```

## Repository structure

```
dotfiles/
├── aliases/       # Shell aliases, auto-loaded (*.alias files)
├── bin/           # Custom scripts, added to $PATH automatically
├── cmus/          # cmus music player config (stow)
├── cowsay/        # Custom cowsay cows
├── docs/          # Reference documentation
├── env/           # Environment variables, auto-loaded (*.env files)
├── git/           # Git config (stow)
├── newsboat/      # Newsboat RSS reader config (stow)
├── tmux/          # Tmux config (stow)
├── vim/           # Vim config (stow)
├── vscode/        # VSCode settings (stow)
└── zsh/           # Zsh config (stow)
```

## Configuration

### Special directories

These directories are **not stowed** — they are loaded automatically by the shell.

| Directory | Description                                             |
| --------- | ------------------------------------------------------- |
| `aliases` | Add a `*.alias` file and it will be sourced at startup  |
| `bin`     | Add scripts here — the directory is on `$PATH`          |
| `docs`    | Reference documentation (DNS, shell shortcuts, tools)   |
| `env`     | Add a `*.env` file and it will be sourced at startup    |

### Local / machine-specific config

Machine-specific settings that should not be committed go in `~/.dotfiles/.local/`:

```
.local/
├── zsh/       # Any *.zsh file here is sourced at startup
└── bin/       # Local scripts added to $PATH
```

Create the directory if it does not exist:

```sh
mkdir -p ~/dotfiles/.local/zsh
mkdir -p ~/dotfiles/.local/bin
```

### Tmux

This config uses [Tmux Plugin Manager (tpm)](https://github.com/tmux-plugins/tpm).

1. [Install tpm](https://github.com/tmux-plugins/tpm#installation)
2. [Install plugins](https://github.com/tmux-plugins/tpm#installing-plugins) defined in `.tmux.conf`

### Custom scripts (`bin/`)

| Script        | Description                                          |
| ------------- | ---------------------------------------------------- |
| `battery`     | Show battery state and percentage                    |
| `buildHosts`  | Build `/etc/hosts` file                              |
| `certificate` | Inspect TLS certificates                             |
| `countf`      | Count files in a directory                           |
| `jwtDecode`   | Decode a JWT token (requires `jq`)                   |
| `locateip`    | Geolocate an IP address                              |
| `publicip`    | Print your public IP address                         |
| `translate`   | Translate text via API                               |
| `unix`        | Display a splash/login screen                        |
| `weather`     | Show current weather                                 |
| `whereami`    | Geolocate your current public IP                     |

## Thanks

Inspiration from:

- [xero/dotfiles](https://github.com/xero/dotfiles)
- [GNU Stow](https://www.gnu.org/software/stow/)

## License

[MIT](http://opensource.org/licenses/MIT) — Copyright (c) dsumac
