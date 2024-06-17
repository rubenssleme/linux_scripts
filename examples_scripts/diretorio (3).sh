#!/bin/sh
#AUTOR:Joao Paulo
#POLO:SJC
if [ "$#" -ne 1 ]; then
  echo "Número de argumentos inválido"
  exit 1
fi

if ! [ -d "$1" ]; then
  echo "Argumento não é um diretório"
  exit 1
fi

ls -lat $1