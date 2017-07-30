#!/bin/bash

#Author: Jorge Manuel Angel Romero
#Fecha: 29/Jul/2017
#Contacto: inge.jmar@gmail.com
#Descripcion: resuelve ip de dominio


for i in $(cat dominios.txt); do
    host $i
done