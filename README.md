# dotfiles

Everything is based on being in `.config`, trying to follow the [XDG base directory spec](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html).

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
