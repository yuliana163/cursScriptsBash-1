#!/bin/bash
NUM_PARAM=${#}
if [[ ${NUM_PARAM}  -ne 2 ]]
then
    echo "ERROR: has d'introduir dos paràmetres"
    exit 1
fi

A=${1}
B=${2}
SUMA=$((A+B))
    echo "${A}+${B}=${SUMA}"

