#!/bin/bash

function usage(){

#Indicam les instruccions del script
echo "INSTRUCCIONS: ./create_users.sh USER_NAME [USER_NAME ... ]"
exit 1

}

#El nom del script que s'executa
echo "Nom del script ${0}"

#El PATH i el filename del script
echo "El Path: $(dirname ${0}) i el fitxer seria $(basename ${0})"

#El número de paràmetres
NUMERO_PARAMETRES=${#}
echo "NUMERO_PARAMETRES: ${NUMERO_PARAMETRES}"

#Si el número de paràmetres és igual zero ha de sortir (exit 1),
#indicant que el primer paràmetre és obligatori i que rebrà de 
#nom USER_NAME, i que pot rebre paràmetres opcionals que també seran noms d'usuaris.

if [[ ${NUMERO_PARAMETRES} -eq 0 ]]
then
# errada necessitam al manco un paràmetre
    usage

fi

#Afegir tots els paràmetres dins una variable i mostrar-la per pantalla.
TOTS_ELS_PARAMETRES=${*}
echo "TOTS ELS PARAMETRES: ${TOTS_ELS_PARAMETRES}"

#Desplaçar els parametres a l'esquerra
#shift
#Tornar a mostrar els parametres
#TOTS_ELS_PARAMETRES=${*}
#echo "TOTS ELS PARAMETRES: ${TOTS_ELS_PARAMETRES}"

#Generau un password per cada un dels usuaris passats com a paràmetres.
#for es un bucle , que s'executa per cada element de ${@}

for USER_NAME in ${@}
do 
    #ENTRAREM DINS AQUEST BLOC, TANTES VEGADES COM PARÀMETRES POSEM AL SCRIPT
    
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"

done

