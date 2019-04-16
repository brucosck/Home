#!/bin/bash

#Necessario para intalação spotify
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A87FF9DF48BF1C90 
echo deb http://repository.spotify.com stable non-free | tee /etc/apt/sources.list.d/spotify.list 


apt update

apt install spotify-client
