#!/bin/bash
#AUTOR:Gustavo Hissi
#POLO:SJC
#testa numero de paramentros de linha de comando
if [ $# -ne 1 ]; then
echo "Somente 1 parametro!"
else
echo "Mais de 1 parametro!"
fi

#se o paramentro #1 é um diretorio
             	if [ -d $# ]
then
   echo "É um diretório!"
   #lista conteudo
   ls -t $#
else
   echo "Não é um diretório!"
fi
