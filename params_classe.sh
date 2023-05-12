#!/bin/bash


function usage(){
    echo "USAGE: has de introduir almenys 2 paràmetres"
    echo "params_classe.sh x1 x2 [x3...xn]"
    exit 1
}


NUM_PARAM=${#}
    echo "numero de paràmetres: ${NUM_PARAM}"
    if [[ ${NUM_PARAM} -lt 2 ]]
    then
    usage
fi


SUMA=0
PRODUCTE=1
for I in ${@}
do
    SUMA=$((SUMA+I))
    PRODUCTE=$((PRODUCTE*I))
done
echo "La suma val ${SUMA}"
echo "El producte val ${PRODUCTE}"
PARAMETRES
#!/bin/bash


PARAM0=${0}
    echo "el paràmetre 0 és ${0}"
    echo "el paràmetre 1 és ${1}"
    echo "el paràmetre 2 és ${2}"


parametre_sostingut=${#}
    echo "el primer sostingut ${parametre_sostingut} indica el numero de paràmetres"