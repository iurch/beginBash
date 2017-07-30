#!/bin/bash

#Author: Jorge Manuel Angel Romero
#Fecha: 29/Jul/2017
#Contacto: inge.jmar@gmail.com
#Descripcion: Informacion de dominios 

clear 
echo -n "Ingresa el dominio del cual quieres tener informacion: "
read dominio

if [ -z $dominio ]; then
    echo "No ingresaste ningun  dominio"
    exit
fi

echo 
echo "Comenzando la recoleccion de informacion del dominio " $dominio
echo
read -p "Presiona enter para continuar"


# firefox &
# sleep 1
# firefox -new-tab URL
# sleep 1
# firefox -new-tab URL
# sleep 1
# firefox -new-tab URL
# sleep 1