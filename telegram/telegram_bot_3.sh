#!/bin/bash

HOST=$(hostname)
IP=$(curl ifconfig.me)
echo ${IP}
MISSATGE="La màquina ${HOST} s'ha iniciat a la data $(date) amb la ip: ${IP}"

/home/yuliana/cursscripts/telegram/telegram_bot_2.sh "${MISSATGE}"

