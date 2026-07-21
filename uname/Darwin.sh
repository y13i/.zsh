bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down

export PNPM_HOME="$HOME/Library/pnpm"

[[ -f "/opt/homebrew/bin/brew" ]] && eval "$(/opt/homebrew/bin/brew shellenv)"
