# Trabajo Práctico Bash

## Descripción

Este trabajo consiste en un script en Bash que permite gestionar archivos mediante un menú interactivo.

## Funcionalidades

* Crear el entorno de trabajo
* Procesar archivos en segundo plano (background)
* Listar alumnos ordenados por número de padrón
* Mostrar las 10 notas más altas
* Buscar un alumno por padrón

## Estructura de carpetas

```
EPNro1/
 ├── entrada/
 ├── salida/
 └── procesado/
```

## Requisitos

Antes de ejecutar el script, se debe definir la variable de entorno:

```
export FILENAME=alumnos
```

## Ejecución

Definir la variable de entorno:

```
export FILENAME=alumnos
```

Dar permisos de ejecución:

```
chmod +x menu.sh
chmod +x consolidar.sh
```

Ejecutar el programa:

```
./menu.sh
```

## Uso

1. Ejecutar el script y seleccionar la opción 1 para crear el entorno
2. Agregar archivos .txt en la carpeta "entrada"
3. Seleccionar la opción 2 para procesar los archivos
4. Utilizar las demás opciones del menú según lo que se necesite

## Formato de los archivos

Los archivos deben tener el siguiente formato:

```
Nro_Padrón Nombre Apellido Email Nota
```

Ejemplo:

```
122332 Juan Lopez jlopez@fi.uba.ar 8
100998 Pedro Valdez pvaldez@fi.uba.ar 5
```

## Notas

Los archivos de prueba no se incluyen en el repositorio, ya que se generan únicamente para verificar el funcionamiento del script.

