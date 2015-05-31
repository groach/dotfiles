# Path to your oh-my-zsh installation.
export ZSH=/Users/garrett/.oh-my-zsh

ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"

plugins=(git)

# User configuration

export PATH="/Users/garrett/.rbenv/shims:/usr/local/bin:/Users/garrett/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

# aliases
alias refresh="source ~/.zshrc"
alias s="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias shell="s ~/.zshrc"

#folder shortcuts
alias dev="cd ~/dev"
alias desk="cd ~/Desktop"
alias down="cd ~/Downloads"

#git
alias gs="git status"
alias git-count="git rev-list HEAD --count"
alias log="git log --oneline --decorate"

#ssh
alias ssh-invstag="ssh deployer@52.5.14.127"
alias ssh-invprod-web0="ssh deployer@52.4.253.2"
alias ssh-invprod-web1="ssh deployer@52.0.50.37"
alias ssh-invprod-batch="ssh deployer@54.209.178.109"

#rails
alias bi="bundle install"
alias test-migrate='RAILS_ENV=test rake db:migrate'
alias migrate='rake db:migrate'
