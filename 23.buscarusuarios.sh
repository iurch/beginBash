#!/bin/bash

#Author: Jorge Manuel Angel Romero
#Fecha: 29/Jul/2017
#Contacto: inge.jmar@gmail.com
#Descripcion: Buscar en archivos usuarios

echo -n "Ingresar un usuario: "
read usuario

if grep ^$usuario /etc/passwd; then 
    echo "El usuario $usuario si esta en este sistema"
else 
    echo "El usuario $usuario no se encuentra en este sistema"
fi