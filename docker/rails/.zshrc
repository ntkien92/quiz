export ZSH=/root/.oh-my-zsh

ZSH_THEME="simple"

plugins=(git rails bundler git-flow git-hubflow)

source $ZSH/oh-my-zsh.sh

export SSH_KEY_PATH="~/.ssh/dsa_id"

alias rs="bundle exec rails server -p 3000 -b '0.0.0.0'"
alias rc="rails c"
