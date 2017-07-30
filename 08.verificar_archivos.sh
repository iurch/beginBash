#!/bin/bash

#Author: Jorge Manuel Angel Romero
#Fecha: 29/Jul/2017
#Descripcion: Verifica los archivos y si lo encuentra ver que tipo es
#Contacto: inge.jmar@gmail.com

echo "Escrube el nombre del archivo que quieres verificar"
read archivo

if [ -a $archivo ]; then
    echo "el archivo existe"

        if [ -x $archivo ]; then
            echo "El archivo es ejecutable"
        fi

        if [ -d $archivo ]; then
            echo "Esto es un directorio"
        fi
        else 
            echo "Archivo o carpeta inexistente"
fi