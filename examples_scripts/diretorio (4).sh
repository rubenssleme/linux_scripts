#!/bin/sh
#AUTOR: Jonathan Dias Moretti
#POLO:SJC
clear
echo "Digite o caminho de onde você deseja listar os arquivos"
read caminho
if [ ! -d "$caminho" ]; 
 then
  echo "Entre com um diretório válido !"
 else
  ls -Fltr $caminho
  fi
