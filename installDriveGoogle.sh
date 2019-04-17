#!/bin/bash
apt install software-properties-common dirmngr gnupg-agent
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys AD5F235DF639B041
echo 'deb http://ppa.launchpad.net/alessandro-strada/ppa/ubuntu xenial main' | sudo tee /etc/apt/sources.list.d/alessandro-strada-ubuntu-ppa.list >/dev/null
apt-get update
apt-get install google-drive-ocamlfuse
