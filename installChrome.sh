#!/bin/bash

apt install dirmngr

#Necessario para instalação do Google Chrome
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list' 
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add - 

apt update

apt install google-chrome-stable
