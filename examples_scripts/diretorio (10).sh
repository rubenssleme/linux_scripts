#!/bin/bash

#AUTOR: Thiago Moretti Cerruti
#POLO:SJC


if [ $# -ne 1 ]; then
	echo "É necessário passar um e apenas um argumento."
	exit 1
fi
if [ ! -d $1 ]; then
	echo "O argumento passado não é um diretório."
	exit 1
fi
ls -l -t $1
