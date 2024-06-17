#!/bin/bash

#AUTOR: Thiago Moretti Cerruti
#POLO:SJC

if [ $# -eq 0 ]; then
	echo "Você não passou o nome a ser pesquisado."
	exit 1
fi
cat agenda.dat |grep $1
