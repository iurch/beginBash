#!/bin/bash

#Author: Jorge Manuel Angel Romero
#Fecha: 29/Jul/2017
#Descripcion: Creación de menú
#Contacto: inge.jmar@gmail.com


echo "Ingresa alguna opción"

echo "1 limpiar pantalla"
echo "2 mostrar ruta actual"
echo "3 mostrar el historial de comandos"
echo "4 salir de este programa"

echo "Seleccionar opción"
read opcion

case $opcion in
1) clear;;
2) pwd;;
3) history;;
4) exit;;
*) echo "Opcion no valida"
esac

# si se pone el script de bash en el directorio /bin
# la carpeta /bin contiene todos los comando de linux no es necesario copiarlo con la extension *.sh
# sudo cp 09.menu.sh /bin/menu