#!/bin/sh
#autor: Paulo Vitor Mira Fonseca
#Polo: SJC


if [ $# -eq 0 ]; 
then
	echo "Informe um diretorio"
	exit 1
fi

if ! [ -d $1 ]; 
then
	echo "Diretorio nao existe"
	exit 1
fi


ls $1 -lht




