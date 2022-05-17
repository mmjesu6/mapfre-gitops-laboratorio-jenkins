#!/bin/bash

OUTPUT= $(echo "Jesus" | bash scrPrueba.sh Jesus)
if ["${OUTPUT}" = "Encantado de saludarte, Jesus"];then
    echo "Test superado"
    exit 1
fi 
echo "Hola "
OUTPUT= $(echo "secreto" | bash scrPrueba.sh secrecto)
if ["${OUTPUT}" = "Encontraste el truco!: el primer parámetro del script es: oterces"];then
    echo "Test truco superado"
    exit 1
fi 