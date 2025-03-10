#! /bin/bash 

#AUTOR:Leandro Savio Belisqui
#POLO:Leandro Savio Belisqui

ARQ=`ls *.txt | wc -l`
DIR=$PWD/bkp

#Verifica se existem arquivos txt, se existir, faz o backup
if [ $ARQ -gt 0 ]
 then
    #Cria pasta bkp se não existir
    mkdir -p $DIR
    #Copia todos os arquivos txt para a pasta bkp.
    find $PWD -name '*.txt' -exec cp {} $DIR \;
    #Altera a extensão dos arquivos da pasta bkp
    for file in $DIR/*.txt
     do
       mv ${file} ${file/.txt}.bak
     done 
    echo "Backup concluído!"
 else
    echo "Não existem arquivos para backup!"
fi

