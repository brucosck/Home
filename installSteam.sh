#!/bin/bash
echo "deb http://ftp.br.debian.org/debian stretch main contrib non-free
deb http://security.debian.org/ stretch/updates main contrib non-free
deb http://ftp.br.debian.org/debian/ stretch-updates main contrib non-free" >> /etc/apt/sources.list.d/steam.list

dpkg --add-architecture i386

apt update && apt install steam
