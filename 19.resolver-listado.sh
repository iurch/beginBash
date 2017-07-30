#!/bin/bash

#Author: Jorge Manuel Angel Romero
#Fecha: 29/Jul/2017
#Contacto: inge.jmar@gmail.com
#Descripcion: Resolver Listado

clear
echo -n "Ingresa la ruta del archivo donde se encuetran las paginas: "
read ruta

if [ -z $ruta ]; then
    echo "Archivo o ruta no valida"
    exit
fi

echo

if [ ! -f $ruta ]; then
    echo "Archivo inexistente o ruta erronea"
    exit
fi

echo

echo -e "Leyendo el archivo " $ruta
read -p "Preasiona enter para continuar"


# firefox &
# sleep 3

for i in $(cat $ruta); do
    echo $i
    sleep 1
done


# robots.txt directorios que se encuentren desactivados