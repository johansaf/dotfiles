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
