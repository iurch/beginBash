#!/bin/bash

#Author: Jorge Manuel Angel Romero
#Fecha: 29/Jul/2017
#Contacto: inge.jmar@gmail.com
#Descripcion: Programa que hace uso de comparaciones sobre cadenas para lo cual se toma como base la siguiente tabla de equivalencia

#   bash    
#    =          equal
#    !=         not equal
#    <          less than
#    >          greater than
#   -n s1       string s1 is not empty
#   -z s1       string s1 is empty
#


echo "Escribe una palabra: "
read texto1
echo 
echo "Escribe otra palabra: "
read texto2


if [ $texto1 = $texto2 ]; then
    echo 
    echo "Las 2 palabras ingresadas son iguales "
fi

if [ $texto1 != $texto2 ]; then
    echo   
    echo "Las 2 Palabras ingresadas son diferentes"
fi