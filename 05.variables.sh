#!/bin/bash

#Author: Jorge Manuel Angel Romero
#Fecha: 29/Jul/2017
#Descripcion: variables globales y locales
#Contacto: inge.jmar@gmail.com


Variable="Soy una variable Gobal"
echo

function bash {
    local Variable="Soy una variable Local"
    echo $Variable
}

echo $Variable
bash
echo $Variable