# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/garrett/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#env
export POSTGRES_USERNAME=garrett
export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig"

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
alias gcm="
if [ `git rev-parse --verify master 2>/dev/null` ]
then
   git checkout master
fi
if [ `git rev-parse --verify main 2>/dev/null` ]
then
   git checkout main
fi
"
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
alias ssh-tags="cx ssh -s 'tag-manager' -e production bulldog"
alias ssh-directmail="cx ssh -s 'direct-mail' -e production dragon"
alias ssh-listings="cx ssh -s 'listings' -e production pelican"

#rails
alias bi="bundle install"
alias rspec="bundle exec rspec"
alias test-migrate='RAILS_ENV=test rake db:migrate'
alias migrate='rake db:migrate'
alias annotate-models='annotate --exclude tests,fixtures,factories,serializers'
alias server-process='lsof -wni tcp:3000'
alias edit-credentials='EDITOR="code --wait" bin/rails credentials:edit'
alias tailwind-build='npx tailwindcss -i app/assets/stylesheets/application.css -o app/assets/stylesheets/wind.css --watch'

#python
alias python="python3"

alias laptop='bash <(curl -s https://raw.githubusercontent.com/monfresh/laptop/master/laptop)'

export PATH="$HOME/.bin:$PATH"

source /opt/homebrew/opt/chruby/share/chruby/chruby.sh

source /opt/homebrew/opt/chruby/share/chruby/auto.sh

chruby ruby-3.1.2

eval "$(nodenv init -)"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
