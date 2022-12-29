[ -f $ZDOTDIR/`uname`.sh ] && . $ZDOTDIR/`uname`.sh
[ -f $ZDOTDIR/aliases.sh ] && . $ZDOTDIR/aliases.sh
[ -f $HOME/.zshrc ] && . $HOME/.zshrc

# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(
  history-substring-search
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-expand
  git
  nvm
  node
  npm
  aws
  gvm
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
[[ -s "${HOME}/.gvm/scripts/gvm" ]] && source "${HOME}/.gvm/scripts/gvm"
[[ -f "${HOME}/google-cloud-sdk/path.zsh.inc" ]] && . "${HOME}/google-cloud-sdk/path.zsh.inc"
[[ -f "${HOME}/google-cloud-sdk/completion.zsh.inc" ]] && . "${HOME}/google-cloud-sdk/completion.zsh.inc"
