fpath=(
  /opt/homebrew/opt/curl/share/zsh/site-functions
  /opt/homebrew/share/zsh/site-functions
  $ZDOTDIR/plugins
  $fpath
)
PS1="%F{lightblue}%~ %F{green}%#%f "

## History
setopt SHARE_HISTORY            # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST   # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS         # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS     # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS        # Do not display a previously found event.
setopt HIST_IGNORE_SPACE        # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS        # Do not write a duplicate event to the history file.
setopt HIST_VERIFY              # Do not execute immediately upon history expansion.
setopt NOCASEGLOB               # Ignore case
setopt AUTO_CD                  # Change into directory without typing 'cd'

## Aliases
alias bat="bat --theme=gruvbox-dark -p"
alias bwhois="whois -h bgp.tools"
alias cat="bat"
alias diff="delta"
alias find="fd"
alias git="LC_ALL=en_US git"
alias ls="eza --color auto --classify"
alias nosleep="caffeinate -d"
alias traceroute="traceroute -A riswhois.ripe.net"
alias vim="nvim"
alias gr="go run ."

## Keys
bindkey -v      # vi mode
#bindkey '^R' history-incremental-search-backward  # Overridden by atuin

## Brew things
export PATH="/usr/local/sbin:$PATH"

### Use Brew python3 as default instead of system
export PATH="/usr/local/opt/python@3.11/libexec/bin:$PATH"

### Use the brew curl
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

## Completion
#setopt MENU_COMPLETE
setopt AUTO_LIST
setopt COMPLETE_IN_WORD
zmodload zsh/complist
autoload -U compinit; compinit

zstyle ':completion:*' completer _extensions _complete _approximate
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"
zstyle ':completion:*' menu select
zstyle ':completion:*' complete-options true

compdef _bw bw  # bitwarden-cli, should probably be in the plugins/_bw file

### Use vim style keys in menus
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

## Start $EDITOR to modify the current shell line
autoload edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line   # ESC-v

# https://github.com/zsh-users/zsh-syntax-highlighting
if [[ $(uname -m) == "x86_64" ]]; then
	# We're running on a Intel CPU
	source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	alias mtr="sudo /usr/local/sbin/mtr --aslookup --show-ips"

  export PATH="/usr/local/opt/llvm/bin:$PATH"
  export LDFLAGS="-L/usr/local/opt/llvm/lib"
  export CPPFLAGS="-I/usr/local/opt/llvm/include"
else
	# Assume we're on Apple silicon
	source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	alias mtr="sudo /opt/homebrew/sbin/mtr --aslookup --show-ips"

  export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
  export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
fi

# Create a directory and change into it
x () {
  mkdir -p "$1" && cd "$1"
}
