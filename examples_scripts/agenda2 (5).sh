#! /bin/bash 

#AUTOR:Leandro Savio Belisqui
#POLO:Leandro Savio Belisqui

echo -n "Digite o nome:"
read NOME

echo -n "Digite o telefone:"
read TEL

echo $NOME $TEL >> agenda.dat
echo "Dados armazenados!"
