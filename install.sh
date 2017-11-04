#!/bin/bash

#apt-get install zsh curl

#./scripts/init/install_sdkman.sh
#curl -s "https://get.sdkman.io" | bash
#. ~/.sdkman/bin/sdkman-init.sh

#./scripts/init/install_jabba.sh
#curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh

#jabba install 0.9.0-181

#./scripts/init/install_idea.sh
#./scripts/init/install_ohmyzsh.sh


set -e
#copy_git_files.sh
#cp -v .gitconfig ~/
#cp -v .gitignore_global ~/
cp -v .tmux.conf ~/
cp -v .vimrc ~/
cp -v .zshrc ~/

# thisis new repo scripts
#mkdir -p ~/dev/script
#cp -v dev/script/* ~/dev/script/
#sudo cp -v scripts/htmux /usr/local/bin/
#sudo cp -v scripts/* /usr/local/bin/
echo "config files installed successfully! \o/"

echo "run source ~/.zshrc command manually to refresh your configuration"

