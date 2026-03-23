#!/bin/bash

# Validar variable de entorno
if [ -z "$FILENAME" ] 
then
  echo "Error: definir variable de entorno FILENAME"
  exit 1
fi

if [ "$1" == "-d" ]
then
	echo "borrando todo el entorno"
	rm -rf "$HOME/EPNro1"
	pkill -f consolidar.sh
	echo "El entorno de la carpeta NRNro1 fue borrado y se mataron los procesos creados en background"
	exit 0
fi

while true
do
	RUTA_SALIDA="$HOME/EPNro1/salida/$FILENAME.txt"
	echo -e "Menu\n"
	echo "1 - Crear entorno"
	echo "2 - Correr proceso"
	echo "3 - Listar alumnos por numero de padron"
	echo "4 - 10 Notas mas altas"
	echo "5 - Busca tus datos"
	echo -e "6 - Salir\n"

	echo "ingrese una opcion"
	read opcion

	case "$opcion" in 
		1)
			echo "Creando entorno...."
			mkdir -p $HOME/EPNro1/{entrada,salida,procesado}
			cp consolidar.sh $HOME/EPNro1/
			cp archivoentrada.txt "$HOME/EPNro1/entrada/"
			echo "entorno creado correctamente!"
			;;
		2)
			echo "Corriendo proceso en segundo plano"
			bash $HOME/EPNro1/consolidar.sh &
			;;
		3)
			if [ -f "$RUTA_SALIDA" ]
			then
				echo -e "Lista de alumnos por orden de padron\n"
				sort -n "$RUTA_SALIDA"
			else
				echo "El archivo no existe"
			fi
			;;
		4)
			if [ -f "$RUTA_SALIDA" ]
			then
#el -n significa número, el -r significa ordenar en reversa (de mayor a menor)
#el head -n 10 ordena los 10 primeros nombres
				sort -nrk 5 "$RUTA_SALIDA" | head -n 10
#el sort -k 5 los ordena por la cuarta columna ya que estan separados por espacios
			else
 				echo "El archivo no existe"
			fi
			;;
		5)
			echo "Ingrese su numero de padron: "
			read padron

			grep "$padron" "$RUTA_SALIDA"
			;;
		6)
			exit 0
			;;
	esac
done
