#!/bin/bash

# Executar apos a instalação limpa do Debian 9 stretch amd64

dpkg --add-architecture i386

apt update
apt install -y xorg i3 slim alsa-utils pavucontrol pulseaudio-utils dunst libnotify-bin rofi curlftpfs feh sudo conky make dirmngr
