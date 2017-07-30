#!/bin/bash

#Author: Jorge Manuel Angel Romero
#Fecha: 29/Jul/2017
#Contacto: inge.jmar@gmail.com
#Descripcion: Usuario que utiliza el escript





clear
usuario=$(whoami)
lineas="========================================================="

echo $lineas
echo "Bienvenido al curso de script pentesting., " $usuario
echo $lineas

echo
echo "Datos del sistema: "
hostinfo=$(hostinfo)
echo $hostinfo


echo
echo "RED INFORMATION"
ping -c2 google.com
echo "Ping Completado"

# la ruta /dev/null es para enviar toda la inforamcion que no es necesario persistir en disco, por lo tanto al usuario no le descargara la informacion

read -p "Presionar enter para continuar"