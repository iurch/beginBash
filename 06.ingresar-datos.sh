#!/bin/bash

#Author: Jorge Manuel Angel Romero
#Fecha: 29/Jul/2017
#Descripcion: Ingresar Cadenas de texto
#Contacto: inge.jmar@gmail.com

echo -e "Ingresar una palabra: "
read palabra
echo
echo -e "La palabra que ingresaste fue : $palabra"
echo 
echo -e "Ingresa 2 palabras: "
read palabra1 palabra2
echo
echo -e "Las 2 palabras que ingresaste fueron: \"$palabra1\" \"$palabra2\" "
echo -e "Escribe varias palabras"
read -e #Hay una variable por default llamada REPLY
echo
echo -e "Las Palabras escritas fueron: $REPLY" #Aqui se imprimira lo que esta en REPLY
echo 
echo -e "Menciona tus 3 herramientas favoritas de pentesting: "
read -a herramientas #variable
echo 
echo "Tus herramientas favoritas de pentesting son: ${herramientas[0]},${herramientas[1]},${herramientas[2]}"

# con -e se hace referencia a una variable llamada REPLY puede contener varias palabras y siempre esta activo en bash
