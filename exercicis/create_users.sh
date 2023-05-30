#!/bin/bash

function usage(){

#Indicam les instruccions del script
echo "INSTRUCCIONS: ./create_users.sh USER_NAME [USER_NAME ... ]"
echo "Executar com a root"
exit 1

}

#comprovar que spu rooot

if [ ${UID} -ne 0 ]
then
usage
fi

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

#CREAR L'USUARI amb el HOME

useradd -m ${USER_NAME} 

#COMPROVAM SI S'HA CREAT BÉ
if [[ ${?} -ne 0 ]]
then
    echo "Errada creat l'usuari"
exit 1
fi

#CANVIAM PASSWORD,
echo "${USER_NAME}:${PASSWORD}" | chpasswd

#comprovam si el canvi de password ha anat bé.

if [[ ${?} -ne 0 ]]
then
    echo "Errada canviant password"
exit 1
fi

#FER QUE L'USARI HAGI DE CANVIAR EL PASSWORD AL PRIMER LOGI

done





