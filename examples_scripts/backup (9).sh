#!/bin/bash

#AUTOR: Thiago Moretti Cerruti
#POLO:SJC


if [ ! -e bkp ]; then
	mkdir bkp
elif [ ! -d bkp ]; then
	echo "Impossível criar o diretório bkp porque existe um arquivo como o mesmo nome."
	exit 1
fi
for ARQUIVO in *.txt; do
   cp -v "$ARQUIVO" "bkp/$ARQUIVO.bak"
done
