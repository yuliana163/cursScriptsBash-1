#!/bin/bash

HOST=$(hostname)
IP=$(curl ifconfig.me)
echo ${IP}
MENSJAE="La màquina ${HOST} s'ha iniciat a la data $(date) amb la ip: ${IP}"

/home/yuliana/cursScriptsBash-1/telegram/telegram_bot_2.sh "${MENSAJE}"

