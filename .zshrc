# Path to your oh-my-zsh installation.
export ZSH=/Users/garrett/.oh-my-zsh

# ZSH_THEME="gitster"
# ZSH_THEME="hyperzsh"
ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="false"
ZSH_DISABLE_COMPFIX=true

plugins=(git ruby capistrano gem rails rake rbenv)

# User configuration

export PATH=$PATH:/Applications/geckodriver
# export PATH=$PATH:/Applications/chromedriver
export GOPATH=~/go
export PATH="$PATH:$GOPATH/bin"


source $ZSH/oh-my-zsh.sh

# aliases
alias reload="source ~/.zshrc"
alias s="code"
alias shell="code ~/.zshrc"
alias mongo-start="mongod --config /usr/local/etc/mongod.conf"
alias clear-dns-cache="sudo killall -HUP mDNSResponder"
alias be="bundle exec"
alias ex="exit"

#apache
alias apache-start="sudo apachectl start"
alias apache-stop="sudo apachectl stop"
alias apache-restart="sudo apachectl -k restart"
alias apache-help="echo localhost:8080 points to ~/dev"

#folder shortcuts
alias dev="cd ~/dev"
alias rocket="cd ~/dev/rocket"
alias sokal="cd ~/dev/sokal"
alias desk="cd ~/Desktop"
alias down="cd ~/Downloads"

#git
alias gs="git status"
alias gc="git commit"
alias gch="git checkout"
alias gcm="git checkout master"
alias gcp="git checkout production"
alias gm="git merge"
alias gmm="git merge master"
alias gp="git push"
alias gcount="git rev-list HEAD --count"
alias log="git log --oneline --decorate"
alias total-lines="git ls-files | xargs wc -l"
alias total-files="git ls-files | wc -l"

#ssh
alias ssh-ray="cx ssh -s 'audiencetrace' -e production ray"
alias ssh-shark="cx ssh -s 'audiencetrace' -e production shark"
alias ssh-db="cx ssh -s 'audiencetrace' -e production buffalo"

#rails
alias bi="bundle install"
alias rspec="bundle exec rspec"
alias test-migrate='RAILS_ENV=test rake db:migrate'
alias migrate='rake db:migrate'
alias annotate-models='annotate --exclude tests,fixtures,factories,serializers'
alias server-process='lsof -wni tcp:3000'
alias edit-credentials='EDITOR="code --wait" bin/rails credentials:edit'

#python
alias python="python3"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
export PATH="/usr/local/opt/ncurses/bin:$PATH"
eval "$(pyenv init -)"
