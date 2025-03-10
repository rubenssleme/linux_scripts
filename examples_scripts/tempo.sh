#!/bin/bash
# AUTOR:Adriana Talhari 
# POLO:SJC
echo "Digite seu nome: "
#Le o nome digitado pelo usuário e guarda na variável NOME
read NOME
#Guarda na variável hora apenas a hora atual (sem minutos nem segundos)
hora=$(date +%H)
#Se hora for entre 06 e 11, imprime saudação de bom dia.
if [[ $hora -gt 06 ||  $hora -eq 06 ]] && [[ $hora -lt 11 || $hora -eq 11 ]]
then
	echo "Bom dia, $NOME!"
#Se hora for entre 12 e 18, imprime saudação de boa tarde.
elif [[ $hora -gt 12 ||  $hora -eq 12 ]] && [[ $hora -lt 18 || $hora -eq 18 ]]
then
	echo "Boa tarde, $NOME!"
else
	echo "Boa Noite, $NOME!" #Se não atender as condições anteriores, imprime saudação de boa noite.
fi


