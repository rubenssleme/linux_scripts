#!/bin/bash
#AUTOR:Laurindo
#POLO:ROSA DA CHINA
echo �n �Digite o nome do diret�rio: �

read DIRE COMPL

if [ $# -gt 1 ] ; then
   echo "O nome do diret�rio deve conter um parametro!"
elif [ -d $DIRE ] ; then
   echo "Diret�rio inv�lido!"
else
   ls �t $DIRE!
fi