# Path to your oh-my-zsh installation.
export ZSH=/Users/christophwolff/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

#export PATH="/usr/local/opt/php70/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshc="nano ~/.zshrc"
alias dev="cd ~/dev"
alias home="cd ~"
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias s="sublime ."
alias simpleserver="open http://0.0.0.0:8000 && python -m SimpleHTTPServer 8000"

# Project related stuff
alias wien="sublime ~/dev/dev.br.de/wp-content/themes/br-wordpress-studiowien-theme"
alias bayern1="sublime ~/dev/www.bayern1.dev/wp-content/themes/br-wordpress-bayern1-theme"
alias brweather="sublime ~/dev/www.bayern1.dev/wp-content/plugins/br-wordpress-weather"
alias brplayer="sublime ~/dev/www.bayern1.dev/wp-content/plugins/br-wordpress-bayern1-audioplayer"
alias kreativjackpot="sublime ~/dev/kreativ-jackpot.dev/wp-content/themes/_kjp"
alias kreativbund="sublime ~/dev/kreativ-bund.dev/wp-content/themes/kreativ-bund"

alias startmysql="brew services start mariadb"
alias stopmysql="brew services stop mariadb"

alias wpinstall="sh ~/Tools/wp/wpinstall.sh"
alias rundev="npm run dev"


# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH=/Users/christophwolff/.composer/vendor/bin:$PATH
#export PATH=~/npm-global/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=$PATH:/Applications/MAMP/Library/bin

export NVM_DIR="/Users/christophwolff/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#export PATH="/usr/local/opt/php@7.1/bin:$PATH"
#export PATH="/usr/local/opt/php@7.1/sbin:$PATH"
export PATH=/usr/local/php5/bin:$PATH

alias php="/usr/local/bin/php"
export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"
export GIT_EDITOR=vi
export GIT_SEQUENCE_EDITOR=vi
alias df='/usr/bin/git --git-dir=/Users/christophwolff/.dotfiles/ --work-tree=/Users/christophwolff'
