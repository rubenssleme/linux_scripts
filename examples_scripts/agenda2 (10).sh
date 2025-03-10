#!/bin/bash

#AUTOR: Thiago Moretti Cerruti
#POLO:SJC


if [ $# -lt 2 ]; then
	echo "Você não passou o nome ou o telefone para inserir na agenda"
	exit 1
fi
echo "$1	$2" >> agenda.dat
