#!/bin/bash
#AUTOR:Everson
#POLO:ROSA DA CHINA
clear
echo -n "Digite um numero: "
read num
if [ $num -ge 0 -a $num -le 9 ] 
    then 
        r=$(($num % 2))
        case $r in
            0)
               echo "Esse numero e par";;
            1)
               echo "Esse numero e impar";;
        esac
    else
        echo "Número não permitido"
fi

