#!/bin/bash

#Author: Jorge Manuel Angel Romero
#Fecha: 29/Jul/2017
#Contacto: inge.jmar@gmail.com
#Descripcion: 

detectar_dispositivos()
{
    ping -c 1 $1 > /dev/null
    if [ $? -eq 0 ] && echo "Hay un dispositivo conectado a esta red con el ip: $i "
}

for i in 10.0.1.{1..10}
do
    detectar_dispositivos $i &
done
