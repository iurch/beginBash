#!/bin/bash

#Author: Jorge Manuel Angel Romero
#Fecha: 29/Jul/2017
#Contacto: inge.jmar@gmail.com
#Descripcion: Programa que obtiene informacion del sistema en el cual se esta corriendo

echo " ***** Informacion del sistema ***** "
echo

hostinfo="/usr/bin/hostinfo"

if [ -x $hostinfo ]; then
    echo "La informacion del sistema es: "
    hostinfo 
    else 
        echo "No se encuentra el archivo"
fi
echo
