#!/bin/bash
IDEA=ideaIU-172.3968.1-no-jdk.tar.gz
mkdir ~/dev/app/idea
wget -N https://download.jetbrains.com/idea/$IDEA -P ~/Downloads
tar -zxvf ~/Downloads/$IDEA -C ~/dev/app/idea --strip-components=1
nohup ~/dev/app/idea/bin/idea.sh & > /dev/null 2>&1&
