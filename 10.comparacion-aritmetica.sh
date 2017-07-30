#!/bin/bash

#Author: Jorge Manuel Angel Romero
#Fecha: 29/Jul/2017
#Contacto: inge.jmar@gmail.com
#Descripcion: Programa que hace uso de comparaciones aritmeticas para lo cual se toma como base la siguiente tabla de equivalencia

#   bash    Lenguaje de programacion            Descripcion
#   -lt                 <                           less then
#   -gt                 >                           gran then
#   -le                 <=
#   -ge                 >=
#   -eq                 ==
#   -ne                 !=
#

echo "Ingresa un numero: "
read numero1
echo 
echo "Ingresa otro numero: "
read numero2

echo

if [ $numero1 -eq $numero2 ]; then
    echo "Los 2 numeros ingresados son iguales"
fi

if [ $numero1 -gt $numero2 ]; then
    echo "El primer numero es mayor que el 2do numero ingresado"
fi

if [ $numero1 -lt $numero2 ]; then 
    echo "El 1er numero es menor que el 2do numero ingresado"
fi
