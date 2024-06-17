#! /bin/bash 

#AUTOR:Leandro Savio Belisqui
#POLO:Leandro Savio Belisqui

echo -n "Digite o nome desejado:"
read NOME

if grep $NOME agenda.dat
then
echo "Todos os resultados encontrados foram listados!"
else
echo "Nome não encontrado!"
fi

