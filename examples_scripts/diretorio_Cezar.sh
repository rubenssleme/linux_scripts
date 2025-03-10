#!/bin/bash
#AUTOR:Cezar
#POLO:ROSA DA CHINA
function func(){
    if [ $# -gt 1 ]; then
	echo "Numero de argumentos maior que 1"
    elif [ ! -d $1 ]; then
	echo "Informe um diretorio valido"
    else
	 ls -u | grep $1
    fi
}

echo "Informe o nome de um diretorio para listar os arquivos"

read diretorio

func "$diretorio"