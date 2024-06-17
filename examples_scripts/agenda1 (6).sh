#!/bin/bash
#
# Luiz Henrique Ribeiro Coura da Silva - luiz.coura@ufabc.edu.br
# Software Livre - Exercício 1

CALENDAR="./agenda.dat"

echo "BUSCAR CONTATO"
echo -n "Nome: "
read _NAME

while read NAME PHONE;do
	if [ $(echo $NAME | grep -i $_NAME) ]; then
		echo -e "$NAME\t$PHONE"
	fi
done < <(grep -v "^#" $CALENDAR)
