#!/bin/bash

#Author: Jorge Manuel Angel Romero
#Fecha: 29/Jul/2017
#Contacto: inge.jmar@gmail.com
#Descripcion: listado de paginas de dominio

clear
echo -n "Ingresa la ruta de el archivo que contiene los dominios que requieres: "
read ruta

# si no ingreso la informacion
if [ -z $ruta ]; then
    echo "No ingresaste la ruta"
    exit
fi
echo 

# si la ruta no es correcta
if [ ! -f $ruta ]; then
    echo "Archivo inexistente"
    exit
fi

echo
echo -e "Leyendo el contenido del archivo que esta en " $ruta
read -p "Presiona enter para continuar"

# firefox &
# sleep 3

# leactura de archivos
for i in $(cat $ruta); do
    echo -e $i
    sleep 1
done