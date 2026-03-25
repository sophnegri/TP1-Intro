#!/bin/bash

entrada="$HOME/EPNro1/entrada"
salida="$HOME/EPNro1/salida"
procesado="$HOME/EPNro1/procesado"

# Limpiar archivo de salida
> "$salida/$FILENAME.txt"

while true
do
    for archivo in "$entrada"/*.txt; do
        [ -e "$archivo" ] || continue

        cat "$archivo" >> "$salida/$FILENAME.txt"
        mv "$archivo" "$procesado"
    done
    sleep 1
done
