#!/bin/bash
#AUTOR:Laurindo
#POLO:ROSA DA CHINA
echo –n “Digite o nome do diretório: “

read DIRE COMPL

if [ $# -gt 1 ] ; then
   echo "O nome do diretório deve conter um parametro!"
elif [ -d $DIRE ] ; then
   echo "Diretório inválido!"
else
   ls –t $DIRE!
fi