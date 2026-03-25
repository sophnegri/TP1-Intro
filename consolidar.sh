#!/bin/bash

entrada="$HOME/EPNro1/entrada"
salida="$HOME/EPNro1/salida"
procesado="$HOME/EPNro1/procesado"

while true
do
	for archivo in $entrada/*.txt;do
		if [ -f "$archivo" ];then
			cat "$archivo" >> "$salida/$FILENAME.txt"
			mv "$archivo" "$procesado"
		fi
	done
sleep 1
done 
