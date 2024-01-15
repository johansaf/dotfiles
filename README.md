# dotfiles

Everything is based on being in `.config`, trying to follow the [XDG base directory spec](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html).

## [Alacritty](https://alacritty.org/)
Nothing special to be done

## [Atuin](https://atuin.sh/)
Also needs `zsh` configuration

## git
Nothing special to be done

## [Homebrew](https://brew.sh)
Install or update everything from a Brewfile:
```shell
brew bundle
```
Dump a new Brewfile:
```shell
rm Brewfile
brew bundle dump
```

## [Karabiner-Elements](https://github.com/pqrs-org/Karabiner-Elements)
- Create `.config/karabiner`
- Touch `.config/karabiner/karabiner.json`
- Start the application and rename the default profile to just `Default`
- Run `goku` to regenerate the Karabiner-Elements config

## neovim
Might be a bit finicky to get going, uses [lazy.nvim](https://github.com/folke/lazy.nvim) as the package manager.

## ssh
- Keys go in the `keys/` directory, and the things we connect to go into the `private` and `work` files
- Create a symlink from `~/.ssh` to `~/.config/ssh`

## sudo
Nothing special to be done

## tmux
- Install the [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
- Install any plugins used, by doing `prefix+I`
