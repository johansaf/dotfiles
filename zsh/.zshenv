# xdg
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CACHE_HOME="$HOME"/.local/cache

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export HISTFILE="$ZDOTDIR"
export HISTSIZE=100000000
export SAVEHIST=100000000
export HISTORY_IGNORE="(fg)"

# editor
export EDITOR="vim"
export VISUAL="vim"

# golang
export GOPATH="$HOME"/go
export GOBIN="$HOME"/go/bin
export GOCACHE="$XDG_CACHE_HOME"/go-build
export PATH=$PATH:$GOBIN

# misc
export MANPAGER="zsh -c 'sed -e s/.\\\\x08//g | bat -l man -p'"
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export DELTA_FEATURES=+side-by-side
export NODE_OPTIONS="--no-deprecation"   # https://github.com/bitwarden/clients/issues/6689
export PATH=~/bin:$PATH

# rust
if [[ -f "$HOME"/.cargo/env ]]; then
	. "$HOME/.cargo/env"
fi
