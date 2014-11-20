# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export ES_HOME=/Users/jerome/dev/elasticsearch/elasticsearch-1.4.0
#Set name of the theme to load.
export PATH=${PATH}:/Users/jerome/Soft/android-sdk/platform-tools:/Users/jerome/Soft/android-sdk/tools:/Users/jerome/Soft/goagent/local:/usr/local/mysql/bin:$ES_HOME/bin
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxexexabagaca
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
#if brew list | grep coreutils > /dev/null ; then
#    PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
#      alias ls='ls -F --show-control-chars --color=auto'
#        eval `gdircolors -b $HOME/.dir_colors`
#fi
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
 alias zshconfig="mate ~/.zshrc"
 alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# -------------------------------------------------------------------
# Git aliases
# -------------------------------------------------------------------


alias ga='git add -A'
alias gb='git branch'
alias gc='git checkout'
alias gcl='git clone'
alias gd='git diff'
alias gf='git reflog'
alias gm='git commit -m'
alias gma='git commit -am'
alias gmam='git commit --amend'
alias gl='git log'
alias glg="git log --pretty=format:'%h %s’ --graph"
alias glu="git log --pretty='%h - %s' --author='songzhiyong'"
alias gpu='git pull'
alias gp='git push'
alias gra='git remote add'
alias grr='git remote rm'
alias gs='git status'
alias gsb='git status -sb'
alias gss='git status -s'
alias gta='git tag -a -m'


#
# -------------------------------------------------------------------
# Octopress 
# -------------------------------------------------------------------
alias blog='cd ~/Blog/songzhiyong.github.com'
alias rake='noglob rake'
alias rg='rake generate'
alias rp='rake preview'
alias rd='rake deploy && git add . && git commit "`date`" && git push'
alias rn='rake new_post'

 
# -------------------------------------------------------------------
# Capistrano aliases
# -------------------------------------------------------------------
 
alias capd='cap deploy'
 
# -------------------------------------------------------------------
# OTHER aliases
# -------------------------------------------------------------------
 
alias cl='clear'
 
# -------------------------------------------------------------------
# Others 
# -------------------------------------------------------------------
alias goagent='goagent-osx.command'
alias .9='draw9patch'

alias cpdebug='cp app/build/outputs/apk/app-debug.apk ~/Desktop/debug-history/app-debug`date +%m%d_%H%M%S`.apk'
alias cprelease='cp app/app-release.apk ~/Desktop/debug-history/app-release`date +%m%d_%H%M%S`.apk' 

alias installd='adb install app/build/outputs/apk/app-debug.apk'
alias installr='adb install app/app-release.apk'

alias uninstallapp='adb uninstall com.eyespage.launcher2.app'
 
# -------------------------------------------------------------------
# FUNCTIONS
# -------------------------------------------------------------------
 
# return my IP address
function myip() {
    ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
     ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
     ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
     ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
     ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
}


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
