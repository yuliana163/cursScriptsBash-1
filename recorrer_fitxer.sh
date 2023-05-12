#!/bin/bash
NUMERO_LINIES=0
SUMA=0
for linia in $(cat numeros.txt)
do
    NUMERO_LINIES=$((NUMERO_LINIES+1))
    SUMA=$((SUMA+linia))

done
echo "numero de linies: ${NUMERO_LINIES}"
echo "la suma val: ${SUMA}"

MITJANA=$(echo "scale=3; ${SUMA}/ $ {NUMERO_LINIES}" | bc)
echo "la mitjana val ${MITJANA}"
