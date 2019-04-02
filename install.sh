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
               
               
#Adicionando Repositórios
echo deb http://repository.spotify.com stable non-free | tee /etc/apt/sources.list.d/spotify.list #Necessario para instalação spotify


apt update

#need package
apt install spotify-client
