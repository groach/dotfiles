# Path to your oh-my-zsh installation.
export ZSH=/Users/garrett/.oh-my-zsh

ZSH_THEME="gitster"
ENABLE_CORRECTION="false"

plugins=(git ruby capistrano gem rails rake rbenv)

# User configuration

export PATH="/Users/garrett/.rbenv/shims:/usr/local/bin:/Users/garrett/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

export PATH=$PATH:/Applications/geckodriver
# export PATH=$PATH:/Applications/chromedriver
export GOPATH=~/go
export PATH="$PATH:$GOPATH/bin"


source $ZSH/oh-my-zsh.sh

# aliases
alias refresh="source ~/.zshrc"
alias s="atom"
alias shell="atom ~/.zshrc"
alias mongo-start="mongod --config /usr/local/etc/mongod.conf"
alias clear-dns-cache="sudo killall -HUP mDNSResponder"

#folder shortcuts
alias dev="cd ~/dev"
alias desk="cd ~/Desktop"
alias down="cd ~/Downloads"

#git
alias gs="git status"
alias git-count="git rev-list HEAD --count"
alias log="git log --oneline --decorate"
alias total-lines="git ls-files | xargs wc -l"
alias total-files="git ls-files | wc -l"

#ssh
alias ssh-setup="ssh-add && ssh-add ~/.ssh/webstreak.pem"
alias ssh-invstag="ssh deployer@52.5.14.127"
alias ssh-invprod-web0="ssh deployer@52.4.253.2"
alias ssh-invprod-web1="ssh deployer@52.0.50.37"
alias ssh-invprod-batch="ssh deployer@34.204.192.66"

#rails
alias bi="bundle install"
alias test-migrate='RAILS_ENV=test rake db:migrate'
alias migrate='rake db:migrate'
alias annotate-models='annotate --exclude tests,fixtures,factories,serializers'
