#!/bin/sh

################################################################
# autor     : Marcelo dos Santos <santos.marcelo@ufabc.edu.br>
# disciplina: Software Livre
# script    : agenda2.sh
#
# Agenda Telefônica
#
# % ./agenda2.sh
# Entre com o nome e o telefone: <RET>
# Marcelo 12-102938
# Registro Gravado!
################################################################

nome=""
telefone=""

echo "Entre com o nome e o telefone: <RET>"
read nome telefone
if [ -n "$nome" ] && [ -n "$telefone" ]
then
    echo "$nome $telefone" >> agenda.dat
    echo "Registro Gravado!"
else
    echo "Registro Incorreto! (nome telefone)"
fi
