#! /bin/bash 

#AUTOR:Leandro Savio Belisqui
#POLO:Leandro Savio Belisqui

#Faz a leitura da data através do comando date.
#Seleciona o 4 campo, delimitado por espaços em branco no resultado
#Do resultado acima, seleciona o primeiro campo, com delimitador :
#O resultado final é apenas a hora registrada pelo sistema.
horas=`date | cut -d" " -f4 | cut -d: -f1`
#Se hora entre 06 e 12 = manhã
if (("$horas" >= "06")) && (("$horas" <= "12"))
then
echo -e "Bom dia!"
#Se hora entre 12 e 18 = tarde
elif (("$horas" > "12")) && (("$horas" < "18"))
then
echo -e "Boa tarde!"
else
#Se não é manhã e nem tarde, só pode ser noite.
echo -e "Boa noite!"
fi
