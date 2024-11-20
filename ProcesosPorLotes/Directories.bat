@echo off
rem Script de Prueba
rem Autor: Adrián Jiménez
rem Fecha: 20-11-2024

echo Presiona 1 para crear un fichero con nombre
echo Presiona 2 para mostrar el árbol de directorios de la carpeta de usuario
echo Presiona 3 para mostrar los archivos con extensión txt del directorio actual
echo Presiona 4 para crear los directorios alfredoff, marinapg y ramonam en tu directorio actual
echo Presiona 5 para copiar el contenido de tu carpeta de usuario al Escritorio

set /P option=
if %option% EQU 1 goto .txt
if %option% EQU 2 goto tree
if %option% EQU 3 goto extension txt
if %option% EQU 4 goto directorios
if %option% EQU 5 goto carpeta usuario

:.txt
set /P nombre="Introduzca nombre ficheros:"
echo > %nombre%.txt
pause
exit

:tree
tree %USERPROFILE%
pause
exit

:extension txt
dir *.txt
pause
exit

:directorios
mkdir alfredoff marinapg ramonam
pause
exit
:carpeta usuario
xcopy /E %USERPROFILE% C:\Copia
pause
exit