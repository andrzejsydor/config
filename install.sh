#!/usr/bin/env bash
set -e
cp -v .gitconfig ~/
cp -v .gitignore_global ~/
#sudo cp .tmux.conf ~/
cp -v .vimrc ~/
#sudo cp .zshrc ~/
sudo cp -v scripts/* /usr/local/bin/
echo "config files installed successfully! \o/"
echo "run source ~/.zshrc command manually to refresh your configuration"

