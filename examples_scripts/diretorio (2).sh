#!/bin/bash
#AUTOR:Gustavo Hissi
#POLO:SJC
#testa numero de paramentros de linha de comando
if [ $# -ne 1 ]; then
echo "Somente 1 parametro!"
else
echo "Mais de 1 parametro!"
fi

#se o paramentro #1 � um diretorio
             	if [ -d $# ]
then
   echo "� um diret�rio!"
   #lista conteudo
   ls -t $#
else
   echo "N�o � um diret�rio!"
fi
