# -------------------------------------------------------------------
# PATH
# -------------------------------------------------------------------
export ZSH=$HOME/.oh-my-zsh
export ES_HOME=/Users/jerome/dev/elasticsearch/elasticsearch-1.4.0
export M3_HOME=/usr/local/Cellar/maven/3.2.3/libexec
export M3=$M3_HOME/bin

export PATH=${PATH}:/Users/jerome/Soft/android-sdk/platform-tools
export PATH=${PATH}:/Users/jerome/Soft/android-sdk/tools
export PATH=${PATH}:/Users/jerome/Soft/goagent/local
export PATH=${PATH}:/usr/local/mysql/bin
export PATH=${PATH}:$ES_HOME/bin:$M3/bin
export PATH=${PATH}:$HOME/bin:/usr/local/bin
export PATH=${PATH}:$HOME/.rvm/bin # Add RVM to PATH for scripting

# -------------------------------------------------------------------
# Keys
# -------------------------------------------------------------------
bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word
# -------------------------------------------------------------------
# Lang
# -------------------------------------------------------------------
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# -------------------------------------------------------------------
# zsh theme 
# -------------------------------------------------------------------
ZSH_THEME="robbyrussell"
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"


# -------------------------------------------------------------------
#  Plugins | Example format: plugins=(rails git textmate ruby lighthouse)
# -------------------------------------------------------------------
plugins=(git)

source $ZSH/oh-my-zsh.sh


# -------------------------------------------------------------------
#  Aliases
# -------------------------------------------------------------------
alias vim=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi='vim'
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# -------------------------------------------------------------------
# Git aliases
# -------------------------------------------------------------------
alias ga='git add -A'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gcl='git clone'
alias gd='git diff'
alias gf='git reflog'
alias gm='git commit -m'
alias gma='git commit -am'
alias gmam='git commit --amend'
alias gpu='git pull'
alias gp='git push'
alias gra='git remote add'
alias grr='git remote rm'
alias gs='git status'
alias gsb='git status -sb'
alias gss='git status -s'
alias gta='git tag -a -m'
alias glu="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=short --author='songzhiyong'"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=short"


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
alias goagent='goagent-osx.command'
 
# -------------------------------------------------------------------
# Android Debug 
# -------------------------------------------------------------------
alias .9='draw9patch'

alias cpde='cp app/build/outputs/apk/app-debug.apk ~/Desktop/debug-history/app-debug`date +%m%d_%H%M%S`.apk'
alias cpre='cp app/app-release.apk ~/Desktop/debug-history/app-release`date +%m%d_%H%M%S`.apk' 

alias installd='adb install app/build/outputs/apk/app-debug.apk'
alias installr='adb install app/app-release.apk'

alias debug='./gradlew :app:assembleDebug'
 
# -------------------------------------------------------------------
# FUNCTIONS
# -------------------------------------------------------------------
 
# return my IP address
function ips() {
     ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
     ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
     ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
     ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
     ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
}


