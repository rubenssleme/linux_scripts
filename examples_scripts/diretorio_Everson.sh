#!/bin/bash
#AUTOR:Everson
#POLO:ROSA DA CHINA
clear
#echo $#
if [ $# != 1 ]
    then
        echo "erro - só é permitido um argumento"
    else
        if [ -d $1 ]
            then
                ls $1 -lt
            else   
                echo "Não é um diretorio"
        fi
fi
