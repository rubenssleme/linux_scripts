#!/bin/sh

################################################################
# autor     : Marcelo dos Santos <santos.marcelo@ufabc.edu.br>
# disciplina: Software Livre
# script    : tempo.sh
#
# Saudação
#
# % ./tempo.sh
# Entre com seu nome: <RET>
# Marcelo
# Marcelo, Boa noite!
################################################################

nome=""
hora=$(date +%H)

echo "Entre com seu nome: <RET>"
read nome

if [ $hora -ge 0 ] && [ $hora -lt 12 ]
then
    echo "$nome, Bom dia!"
elif [ $hora -ge 12 ] && [ $hora -lt 18 ]
then
    echo "$nome, Boa Tarde! "
else
    echo "$nome, Boa noite!"
fi
