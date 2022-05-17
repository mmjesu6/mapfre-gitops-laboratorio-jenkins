#!/bin/bash

OUTPUT= $(echo "Jesus"|bash scrPrueba.sh secreto)
if ["$OUTPUT" = "Encantado de saludarte, Jesus"];then
    echo "Test superado"
else 
    echo "test 1 ha fallado"
    exit 1
fi 
OUTPUT= $(echo "secreto"|bash scrPrueba.sh secrecto)
if ["$OUTPUT" = "Encontraste el truco!: el primer parámetro del script es: oterces"];then
    echo "Test truco superado"
else 
    echo "test ha fallado"
    exit 1
fi 