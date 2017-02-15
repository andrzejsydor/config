#!/usr/bin/env bash
set -e
cp -v .gitconfig ~/
cp -v .gitignore_global ~/
cp -v .tmux.conf ~/
cp -v .vimrc ~/
cp -v .zshrc ~/

mkdir -p ~/dev/script
cp -v dev/script/* ~/dev/script/

sudo cp -v scripts/htmux /usr/local/bin/

sudo cp -v scripts/* /usr/local/bin/
echo "config files installed successfully! \o/"
echo "run source ~/.zshrc command manually to refresh your configuration"

