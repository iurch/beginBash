#!/bin/bash

#Author: Jorge Manuel Angel Romero
#Fecha: 29/Jul/2017
#Contacto: inge.jmar@gmail.com
#Descripcion: Buscando a una persona

clear 
echo -n "Ingresa el nombre de la persona que estas buscando: "
read nombre

# el comodin -z valida que la variable contenga algo
if [ -z $nombre ]; then
    echo "No ingresaste el nombre"
    exit
fi
echo
echo -n "Ingresa el apellido de la persona que estas buscando: "
read apellido
if [ -z $apellido ]; then
    echo "No ingresaste el apellido"
    exit
fi
echo
echo "Comenzando la busqueda de $nombre $apellido..."
read -p "Presiona enter para continuar"

#firefox google.com
#firefox -new-tab http://www.411.com/name-apellido

# delay entre comandos
# sleep 1
# El simbilo de & sirve para mandar una tarea a segundo plano