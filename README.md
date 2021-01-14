# config files for Linux and macOS

## TIP: reload .bashrc.

[https://stackoverflow.com/questions/2518127/how-do-i-reload-bashrc-without-logging-out-and-back-in](https://stackoverflow.com/questions/2518127/how-do-i-reload-bashrc-without-logging-out-and-back-in)

```sh
source ~/.bashrc
. ~/.bashrc
```

## Plugins
[https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/kubectl](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/kubectl)

## Update
If you are using [om-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
```sh
omz update
```
## Installation

1. clone this repository with all plugins included

    ```shell
    mkdir -p ~/src/github/config
    git clone https://github.com/andrzejsydor/config.git ~/src/github/config
    cd ~/src/github; git submodule init; git submodule update
    ./install.sh
    ```

    update
    ------

    ```shell
    cd config
    git pull && ./install.sh
    ```

    install vim plugin
    ------------------
    ```shell
    ~/.vim/bin/install
    ```



### ZSH (Recommended)

We strongly recommend to use ZSH shell with this config. To change your default shell into ZSH, just type `chsh -s /usr/zsh` in your terminal.

1. Install [.oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

    ```shell
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    ```
2. Add those lines in your newly created `~.zshrc` file. Please, ensure, that you have zsh plugins before `oh-my-zsh` file loaded, and `.zshrc` after that.

    ```shell
    source $HOME/bin/.zsh_plugins
    source $ZSH/oh-my-zsh.sh
    source $HOME/bin/.zshrc
    ```

### BASH
2. Add this line to your `~/.bash_profile` file

    ```shell
    source ~/bin/.bashrc
    ```

## Script list

1. Git branch color
2. Git command autocomplete
3. Git aliases
4. Git rewrite author
5. Project specific script structurization
6. Shell color schemes
7. TMUX runtime script

### 1. Git branch color

If there is a git repository in current folder, it shows the current branch name, and color it to green/red depending of uncommitted changes

### 2. Git completion

TODO: need update
This script autocompletes git commands after pressing <TAB> key.

### 3. Git aliases

I use several shortcuts for git to improve my speed of repository management. For now I didn't updated `git autocomplete script` to work with
aliases, so I use shell aliases only for commands without need to autocomplete branches.

``` shell
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
```

### 5. Project specific scripts

If you want to add commands for project specific environment setup, just add `project-specific/private.sh` and list sources of private files there.

I name private project_files started from `_` - those files are also ingnored in this repository.

Example:

```shell
FILE: project-specific/private.sh

source $HOME/bin/project-specific/_wpl.sh
```

This configuration allows me to simply use `wpls` to *immediately start* some server inside of my project with proper gemset set. I use separeate file
for each project and keep them private.

### Tmux

This script immediately opens terminal with two windows with 3 panels ond first one, runs vim, server, console, and prepare project-specific
environment.

To use it, just setup those environment variables. I place them inside of my project-specific files in `twpl` command. After configuring environment
in this way, typing `twpl` in your terminal will do everything you need - just start coding.

```shell
FILE project-specific/_wpl.sh

#HERE you can provide scripts to setup your project environment
#

#run tmux environment auto setup
twpl(){
  export session=sydor
  export window1=${session}:shell
  export window2=${session}:vim
}
```

