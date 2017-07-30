#!/bin/bash

#Author: Jorge Manuel Angel Romero
#Fecha: 29/Jul/2017
#Descripcion: Condición IF
#Contacto: inge.jmar@gmail.com

echo "Ingresa tu edad: "
read edad

# debe estar alineado IF - FI
# En bash se pide identación
if test $edad = 18
    then
        echo "Eres mayor de edad"
    else 
        echo "No sabemos si eres joven o anciono"
fi
