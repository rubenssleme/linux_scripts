#!/bin/bash
#
# Luiz Henrique Ribeiro Coura da Silva - luiz.coura@ufabc.edu.br
# Software Livre - Exercício 5

if [ $# -ne 1 ]; then
	echo "Entre com apenas um parâmetro."
	echo "Uso: $0 DIR"
	exit 1
fi

DIR=$1

if [ -e $DIR ]; then
	if [ -d $DIR ]; then
		ls -lt $DIR
	else
		echo "O parâmetro não é um diretório"
	fi
else
	echo "O parâmetro passado não existe"
fi
