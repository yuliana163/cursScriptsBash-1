#!/bin/bash
useradd -m -c "${COMMENTS}" ${USER_NAME} &> /dev/null


if [[ ${?} -ne 0 ]]
then
    echo "Errada creat l'usari"
    exit 1
fi
echo "${USER_NAME}:${PASSWORD}" | chpasswd


if [[ ${?} -ne 0 ]]
then
    echo "Errada canviant password"
    exit 1
fi
 
passwd -e ${USER_NAME}


exit 0


if [[ ${UID} -ne 0 ]]
then
    echo "Usage ${0}"
    echo "Has de ser root"
    exit 1
fi
