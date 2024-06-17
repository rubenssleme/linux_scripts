#!/bin/bash
#AUTOR:Gustavo Hissi
#POLO:SJC
#limpa tela
clear
#le horario
horario=`date +%H%M`
#testa e saúda
if [ $horario -ge 001 && $horario -le 1200 ]; then
echo "Muito bom dia meu caro $USERNAME!"
elif [ $horario -ge 1201 && $horario -le 1800 ]; then
echo " Muito boa tarde meu caro $USERNAME!"
else
echo " Muito boa noite meu caro $USERNAME!"
fi

