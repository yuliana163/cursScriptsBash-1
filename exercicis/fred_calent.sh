#!/bin/bash

#Genera un nombre aleatori entre 1 i 10:
adivina=$(( ( RANDOM % 10 )  + 1 ))
echo "ADIVINA: ${adivina}"

#########################################################
# Escriu el teu codi aqui
########################################################
vides=3
while [[ ${vides} -ne 0 ]]
do
    echo "vides: ${vides}"
    read -p "Introdueix un nombre: " introduit
    if [[ ${adivina} -eq ${introduit} ]]
    then
        echo "Eureka!"
        exit 0
    fi

    if [[ ${introduit} -lt ${adivina} ]]
    then
        echo "Fred!"
    else 
        echo "Calent!"

    fi
    #RESTAR UNA VIDA
    vides=$(( vides-1 ))
done

########################################################
# Fi del teu codi
########################################################

echo "El nombre que havies d'adivinar era: ${adivina}"
