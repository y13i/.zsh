[ -f $ZDOTDIR/`uname`.sh ] && . $ZDOTDIR/`uname`.sh
[ -f $ZDOTDIR/aliases.sh ] && . $ZDOTDIR/aliases.sh
[ -f $HOME/.zshrc ] && . $HOME/.zshrc

# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

plugins=(
  history-substring-search
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-expand
  git
  node
  npm
  aws
  kubectl
)

export ZSH="${HOME}/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

[[ (( $+commands[direnv] )) ]] && eval "$(direnv hook zsh)"
[[ -f "${HOME}/google-cloud-sdk/path.zsh.inc" ]] && . "${HOME}/google-cloud-sdk/path.zsh.inc"
[[ -f "${HOME}/google-cloud-sdk/completion.zsh.inc" ]] && . "${HOME}/google-cloud-sdk/completion.zsh.inc"

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# pnpm
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

unsetopt CORRECT
unsetopt CORRECT_ALL

[ -f "${HOME}/.local/bin/mise" ] && eval "$(${HOME}/.local/bin/mise activate zsh)"

case ":$PATH:" in
  *":$GOBIN:"*) ;;
  *) export PATH="$GOBIN:$PATH" ;;
esac
