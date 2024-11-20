@echo off
rem Script de Prueba
rem Autor: Adrián Jiménez
rem Fecha: 20-11-2024

echo Press A to make me create a .txt
echo Press B to make me create a .bat
set /p option=
if %option% EQU A goto .txt
if %option% EQU B goto .bat
:.txt
set /P nombre="Introduzca nombre fichero:"
echo > %nombre%.txt
pause
exit
:.bat
set /P nombre="Introduzca nombre fichero:"
echo > %nombre%.bat
pause
exit
