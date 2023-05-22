#!/bin/bash


# 1) Mostra un missatge per pantalla amb el texte "El meu primer script"
    echo "El meu primer script"

# 2) Mostra un missatge per pantalla amb la data actual i el format: Avui es dia 18/05/2021
#    Recorda l'us de la comanda: date
#    Pots obtenir ajuda amb: date --help o man date, per exemple amb date +"Any %Y" obtenim el missatge: Any 2021

    echo "Avui es dia: $(date)"

# 3) Mostra un missatge per pantalla amb l'hora actual i el format: Son les 15:20h
#    usa la mateixa comanda: date

    echo "Son les: $(date + $("%d//%m/%y"))"

# 4) Mostra el contingut del directori actual


# 5) Mostra el contingut del directori temporal /tmp


# 6) Crea dos directoris nous a /tmp anomenats prova i copies


# 7) Dins el directori prova del pas anterior, crea la següent estructura:
#  /tmp/prova/ingressos
#  /tmp/prova/despeses


# 8) Modifica els permisos del directori d'ingressos per que tothom hi pugui accedir, llegir i escriure


# 9) Modifica els permisos del directori despeses per que només el propietari hi tingui accés


# 10) Fes una copia del directori /tmp/prova a /tmp/copia
    cp -r  /tmp/prova a /tmp/copia  
