#!/bin/bash


TOKEN="6196441537:AAGG-x5T6Y9-a4NFQ89Q_Mayu8zQhXLHCMU"
ID="5411631289"
MENSAJE="${*}"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$ID -d text="${*}"
