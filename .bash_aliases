# docker
alias d='docker'

# k8s
alias k='kubectl'
alias ka=“kubectl apply -f"

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

alias resetGnomePanel="sudo killall gnome-panel"
alias resetNautilus="sudo killall nautilus && nautilus"
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

# get Midnight Commander themes from:
# https://github.com/MidnightCommander/mc/tree/master/misc/skins
alias mc="mc -S nicedark"

#if [[ $(python -mplatform | grep Ubuntu) ]]; then
alias get="sudo apt-get install"
alias remove="sudo apt-get remove"
alias autoremove="sudo apt-get remove --auto-remove"
alias purge="sudo apt-get purge --auto-remove"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get update && sudo apt-get updgrade"
#fi

# system info
alias countCpus='cat /proc/cpuinfo | grep "physical id" | sort -u | wc -l'
alias countCores='cat /proc/cpuinfo | grep "siblings" | sort -u | cut -d: -f2'
alias countTotalRam="grep MemTotal /proc/meminfo"
alias countFreeRam="grep MemFree /proc/meminfo"
alias countTotalSwap="grep SwapTotal /proc/meminfo"

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
