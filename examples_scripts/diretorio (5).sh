#! /bin/bash 

#AUTOR:Leandro Savio Belisqui
#POLO:Leandro Savio Belisqui

dir()
 if test -z $1
  then
   echo "O número de argumentos é menor do que 1!"
   exit 1
  elif test -d $1
    then
     ls -lh --sort=time $1
     exit 1
  else
    echo "O caminho informado não corresponde a um diretório!"
    exit 1
 fi


echo -n "Informe o diretório:"
read DIRETORIO


dir "$DIRETORIO"



