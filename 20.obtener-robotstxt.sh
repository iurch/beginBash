#!/bin/bash

#Author: Jorge Manuel Angel Romero
#Fecha: 29/Jul/2017
#Contacto: inge.jmar@gmail.com
#Descripcion: para interactuar con el archivo robots.txt

clear
echo -n "ingresa el dominio: "
read dominio

if [ -z $dominio ]; then
    echo "No ingresaste ningun dominio"
    exit
fi

# q significa modo tranquilo mode quaget
#wget -q google.com

wget -q $dominio/robots.txt
cat robots.txt | grep 'Disallow' | awk '{print $2}' > oculto.txt  # filtrado con awk   =>     awk '{print $2}' 
cat oculto.txt


firefox &
sleep 3

for i in $(cat oculto.txt); do
    firefox -net-tab http://www.$dominio/$i &
    sleep 1
done


# grep "href=" index.html | cut -d"/" -f3 | grep cnn | sort -u > dominios.txt