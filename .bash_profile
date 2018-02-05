function take() {
  mkdir -p -- "$1";
  cd -P -- "$1";
}
export -f take

alias tat="tmux attach -t"
alias tls="tmux ls"
alias ..="cd .."
alias ls="ls -all"
alias vi="vim"

export NVM_DIR="/Users/devanbeitel/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export EDITOR='vim'

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

source ~/.bashrc
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
