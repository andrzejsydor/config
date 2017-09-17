#!/usr/bin/env bash

#apt-get install zsh curl

./scripts/init/install_sdkman.sh
./scripts/init/install_jabba.sh
./scripts/init/install_maven.sh
./scripts/init/install_gradle.sh
./scripts/init/install_springboot.sh
./scripts/init/install_idea.sh
./scripts/init/install_ohmyzsh.sh

jabba install 1.9.0-181

set -e
cp -v .gitconfig ~/
cp -v .gitignore_global ~/
cp -v .tmux.conf ~/
cp -v .vimrc ~/
cp -v .zshrc ~/

mkdir -p ~/dev/script
cp -v dev/script/* ~/dev/script/

#sudo cp -v scripts/htmux /usr/local/bin/

sudo cp -v scripts/* /usr/local/bin/
echo "config files installed successfully! \o/"
echo "run source ~/.zshrc command manually to refresh your configuration"

