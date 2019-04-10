#!/bin/bash

# Script  para i3 que adiciona opção para desligar, reiniciar ou sair do i3
# autores: José Mario e Xerxes Lins
# versão: 1.0
# Data de criação: 17 ago 2014
# http://www.vivaolinux.com.br/~zezaocapoeira
# http://www.vivaolinux.com.br/~xerxeslins

# Como usar:
#
# Torne-o executável:
#
# $ chmod +x i3wm-off
#
# Após mover para "/usr/local/bin/ ", para usá-lo é só
# chamar ele pelo terminal:
#
# $ i3wm-off
#
# Se quiser substituir o comando se saída do i3 por ele, procure nas configurações
# do gerenciador i3 (~/.i3/config) o atalho padrão que é:
#
# "bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut.
# Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-m$"
#
# Substitua por:
#
# bindsym $mod+Shift+e exec i3wm-off"


while true; do
  choice=$(zenity  --list  --text "Selecione uma ação:"\
    --list --column "Ação"\
    --title="Ações de saída do i3" \
    Desligar\
    Reiniciar\
    Suspender\
    Sair);

  case "${choice}" in

 "Desligar" )
#!/bin/bash
    zenity --question --text "Você deseja desligar o computador?" echo $?
    case $? in
        #0) systemctl poweroff;;
        0) shutdown -h now;;
        1) exit;;
    esac
    ;;

 "Reiniciar" )
#!/bin/bash
    zenity --question --text "Você deseja suspender o computador?" echo $?
    case $? in
        #0) systemctl reboot;;
        0) shutdown -r now;;
	#0) systemctl suspend;;
        1) exit;;
    esac
    ;;

 "Suspender" )
#!/bin/bash
    zenity --question --text "Você deseja reiniciar o computador?" echo $?
    case $? in
        0) systemctl suspend;;
        #0) shutdown -r now;;
        1) exit;;
    esac
    ;;

 "Sair" )
#!/bin/bash
    zenity --question --text "Você deseja sair do i3?" echo $?
    case $? in
        0) i3-msg exit;;
        1) exit;;
    esac
    ;;

 *)
    break
    ;;
    esac
done
