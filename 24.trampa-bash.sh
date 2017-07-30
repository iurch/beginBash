#!/bin/bash

#Author: Jorge Manuel Angel Romero
#Fecha: 30/Jul/2017
#Contacto: inge.jmar@gmail.com
#Descripcion: trampa bash

trap bashtrampa INT #comando para la trampa de bash
clear

bashtrampa()
    {
        echo "Se ha detectado la combinacion de teclas CTRL+C!!!"
    }

for i in `seq 1 15`; do
    echo "$i/15 para salir de la trampa"
    sleep 1
done

echo
echo "Saliendo del script"