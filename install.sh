#!/bin/bash

# Executar apos a instalação limpa do Debian 9 stretch amd64

apt update
apt install -y xorg i3 slim alsautils pavucontrol pulseaudio-utils dunst libnotify-bin rofi curlftpfs feh dirmngr sudo wget thunar conky make
dpkg --add-architecture i386 

dpkg -i libc++abi1-7_7.0.1-8_amd64.deb 
dpkg -i libc++1-7_7.0.1-8_amd64.deb 
dpkg -i libc++1_7.0-47.1_amd64.deb 

#Adicionando Repositórios
#Necessario para instalação do Google Chrome
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' 
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 

#Necessario para intalação spotify
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A87FF9DF48BF1C90 
echo deb http://repository.spotify.com stable non-free | tee /etc/apt/sources.list.d/spotify.list 

#ATENÇÃO Necessario para instalação da steam
#aqui o script adiciona 'contrib' e 'non-free' as fontes correspondentes abaixo.
#caso vc utilize outras fontes devera adicionar manualmente.

#deb http://ftp.br.debian.org/debian/ stretch main contrib non-free
#deb http://security.debian.org/debian-security stretch/updates main contrib non-free
#deb http://ftp.br.debian.org/debian/ stretch-updates main contrib non-free
sed -i "s/deb http:/\/\ftp.br.debian.org/\debian/\ stretch main/deb http:/\/\ftp.br.debian.org/\debian/\ stretch main contrib non-free/g" /etc/apt/sources.list
sed -i "s/deb http:/\/\security.debian.org/\debian-security stretch/\updates main/deb http:/\/\security.debian.org/\debian-security stretch/\updates main contrib non-free/g" /etc/apt/sources.list
sed -i "s/deb http:/\/\ftp.br.debian.org/\debian/\ stretch-updates main/deb http:/\/\ftp.br.debian.org/\debian/\ stretch-updates main contrib non-free/g" /etc/apt/sources.list


apt update

#need package spotify
apt install google-chrome-stable spotify-client steam

#git clone #address
sh installTermite.sh


