#!/bin/bash

# Executar apos a instalação limpa do Debian 9 stretch

apt update
apt install -y xorg i3 \ # interface grafica i3wm
               slim \ # gerenciador de Login
               alsautils pavucontrol pulseaudio-utils \ # audo para a placa de som CA0108/CA10300 | Sound Blaster Audigy Series SB0610
               dunst libnotify-bin \ # sistema de notificação.
               rofi \ # Lançador
               curlftpfs \ #ftp como diretório do sistema
               feh \ #suporte a papel de parede
               dirmngr \ #necessario para adicionar chaves no source.list
               sudo \ #permite o uso do sudo
               git \ #necessario para baixar conteudo do github
               wget \ #necessario se necessario baixar algum arquivo
dpkg --add-architecture i386 #Necessario para instalação da Steam

#Adicionando Repositórios
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' #Necessario para instalação do Google Chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add - #Necessario para instalação do Google Chrome

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A87FF9DF48BF1C90 #Necessario para intalação spotify
echo deb http://repository.spotify.com stable non-free | tee /etc/apt/sources.list.d/spotify.list #Necessario para instalação spotify

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
