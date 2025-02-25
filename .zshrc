# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
plugins=(git colorize macos brew mvn gradle pip sudo kubectl)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# show aliases
alias gal='grep -n git ~/.zshrc'

# git setup aliases
alias setupGitPersonal="git config --global user.email \"andrzej.sydor@gmail.com\""
alias setupGitForWork="git config --global user.email \"andrzej.sydor@gmail.com\""
alias ga='git add -p'
alias gaa='git add -A'
alias gc='git commit -m' #this allows me to use 'gc "Commit message"'
alias gca='git commit --amend'
alias gl='git pull -r'   #always pull and rebase actuall branch
alias gm='git merge'
alias go='git checkout'
alias gp='git push'      #always push actual branch.
alias gs='git status'
alias gr='git rebase master' #I often rebase with master and almost never with other branches.
alias gri='git rebase -i'
alias gbc='git rev-parse --abbrev-ref HEAD'
alias gf='git fetch'

# Docker
alias d='docker'
alias drmf='docker rm -f'
alias dps='docker ps'
alias dpsq='docker ps -q'
alias dpsa='docker ps -a'
alias dpsaq='docker ps -a -q'
alias dc='docker-compose '

# Kubernetes
alias k='kubectl'
alias ka=“kubectl apply -f"

# setup for Ubuntu Linux used at home
if [ `uname` = "Linux" ]; then

  alias resetGnomePanel="sudo killall gnome-panel"
  alias resetNautilus="sudo killall nautilus && nautilus"
  alias pbcopy='xsel --clipboard --input'
  alias pbpaste='xsel --clipboard --output'

  # get Midnight Commander themes from:
  # https://github.com/MidnightCommander/mc/tree/master/misc/skins
  alias mc="mc -S nicedark"

  if [[ $(python -mplatform | grep Ubuntu) ]]; then
    alias get="sudo apt-get install"
    alias remove="sudo apt-get remove"
    alias autoremove="sudo apt-get remove --auto-remove"
    alias purge="sudo apt-get purge --auto-remove"
    alias update="sudo apt-get update"
    alias upgrade="sudo apt-get update && sudo apt-get updgrade"
  fi

  # system info
  alias countCpus='cat /proc/cpuinfo | grep "physical id" | sort -u | wc -l'
  alias countCores='cat /proc/cpuinfo | grep "siblings" | sort -u | cut -d: -f2'
  alias countTotalRam="grep MemTotal /proc/meminfo"
  alias countFreeRam="grep MemFree /proc/meminfo"
  alias countTotalSwap="grep SwapTotal /proc/meminfo"

  # network info
  # reference for script below: https://github.com/bwaldvogel/neighbourhood
  alias neighbourhood="sudo neighbourhood.py"

  # development directory
  export DEV=$HOME/dev

  # scripts
  export PATH=~/dev/script/:$PATH
  
  # java # comment because of SDKMAN
  #export JAVA_HOME=/usr/lib/jvm/java-8-oracle
  #export PATH=$JAVA_HOME/bin:$PATH
  #alias switchJava="sudo update-alternatives --config java"
  #alias showJavaVersions="ls -l /usr/lib/jvm"

  # scala # comment because of SDKMAN
  #export SCALA_HOME=/usr/share/scala
  #export PATH=$SCALA_HOME/bin:$PATH

fi


# js
#alias npm="sudo npm"

# python
#alias pip="sudo pip"

# general aliases

alias reloadShell="source ~/.zshrc"
alias resetTomcat="ps -ef | grep tomcat | awk '{print $2}' | xargs kill -9"
alias showJavaProcesses="jps -lV"
alias showMyExtIp="curl http://ipecho.net/plain; echo"
alias prettyJson="python -m json.tool"
alias showWeather="showWeatherIn Wroclaw"
alias connectToLinuxPl="ssh -l wittchen -p 59184 wittchen.linuxpl.info"
alias runHttpSever="python -m SimpleHTTPServer 8000"
alias moo="cowsay"
alias cowthink="cowsay"
alias trim="awk '{gsub(/^ +| +$/,\"\")}1'"
alias firstLine="head -n1"
alias lastLine="tail -n1"
alias excludeGrep="grep -v grep"
alias quickPing="ping 8.8.8.8 -c 1"

# functions for Linux and macOS

function lcd() {
  cd "$1"; ls;
}

function findFile() {
  find ~/ -type f -name "$1"
}

function findDir() {
  find ~/ -type d -name "$1"
}

function getAndPlay() {
  wget $@ && mplayer $(basename $@);
}

function showWeatherIn() {
  curl -s http://wttr.in/"$1" | head -n 7 && printf "\n"
}

function catColorized() {
  cat "$1" | colorize
}

# kill process with a given name
function killProcess() {
  ps -ef | grep $1 | awk '{print $2}' | head -n1 | xargs kill -9
}

# display function output log in the console and save it into a given file
function tea() {
  tee -a $1
}

# allows to perform a given operation with constant refresh in an infinite loop
function repeat() {
 watch -n 1 $1 
}


