if [[ $(uname -m) == "x86_64" ]]; then
	# We're running on a Intel CPU
	eval "$(/usr/local/bin/brew shellenv)"
else
	# Assume we're on Apple silicon
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

eval "$(zoxide init zsh --cmd cd)"
eval "$(atuin init zsh --disable-up-arrow)"
