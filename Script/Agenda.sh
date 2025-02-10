#!/bin/bash
# Entregable 1.Agenda.sh
# Autor: Adrián Jiménez Rodríguez
# Fecha: 3-2-2025

clear

while true; do
        echo "a- Añadir una entrada"
        echo "b- Buscar por dni"
        echo "c- Ver agenda completa"
        echo "d- Eliminar todas las entradas de la agenda"
        echo "e- Finalizar"

        read -p "Introduzca opción " op

        case $op in
                a)
                        read -p "Dime DNI" dni
			if grep "^$dni": agenda.txt>/dev/null; then
			echo "Usuario ya existe"
			else
			read -p  "Introduce el nombre " Nom
			read -p "Introduce los apellidos " Apl
			read -p "Introduce la localidad" Lcl

			echo "$dni:$Nom:$Apl:$Lcl" >> agenda.txt

			fi
                ;;


                b)
			read -p "Dime DNI" dni
                        if grep "^$dni" agenda.txt > /dev/null; then
			nombre=$(grep $dni agenda.txt | cut -d ":" -f 2)
			apellido=$(grep $dni agenda.txt | cut -d ":" -f 3)
			localidad=$(grep $dni agenda.txt | cut -d ":" -f 4)

			echo "La persona con el dni $dni es: $nombre $apellido y vive en $localidad "
			else
				echo "Error "
			fi
                ;;

                c)	if cat "agenda.txt">/dev/null; then

	                        cat "agenda.txt"
                	else
				echo "Agenda vacia"
			fi
		;;

                d)
                        > agenda.txt
			echo "Se a vaciado la agenda"
                ;;

                e)
                        echo "Saliendo"
			break
                ;;

                *)

                        echo "Opción no válida"
                ;;


                esac

done
