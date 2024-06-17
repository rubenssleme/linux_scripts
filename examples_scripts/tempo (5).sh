#!/bin/bash
#
# Luiz Henrique Ribeiro Coura da Silva - luiz.coura@ufabc.edu.br
# Software Livre - Exercício 3

DATE=$(date +%H)

if [ $DATE -ge 18 ]; then
	echo "BOA NOITE!"
	else if [ $DATE -ge 12 ]; then
		echo "BOA TARDE!"
	else
		echo "BOM DIA!"
	fi
fi

