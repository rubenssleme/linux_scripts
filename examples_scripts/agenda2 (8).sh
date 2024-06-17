#!/bin/bash

#autor:Mario Antonio Sesso Junior
#POLO:SJC


# Inserir informações no arquivo "agenda.dat"
agenda() {
	numnome=`cat agenda.dat | grep "$1" | wc -l`;
	numtel=`cat agenda.dat | grep "$2" | wc -l`;
	if [ -z $1 ] || [ -z $2 ]; then 
		# Se não foi digitado o nome ou o telefone
		echo "Voce nao digitou o nome ou telefone.";
	elif [ $numnome -gt 0 ]; then
		# Se ja existe o nome digitado
		echo "Nome ja existe. Insira outro.";
	elif [ $numtel -gt 0 ]; then
		# Se ja existe o telefone digitado
		echo "Telefone ja existe. Insira outro.";
	else
		resultado=`echo "$1  $2" >> agenda.dat`;
		echo "Nome e telefone inseridos no arquivo agenda.dat." 
	fi
}
echo "Digite o nome que deseja inserir.";
read nome;
echo "Digite o telefone que deseja inserir.";
read telefone;
echo "`agenda $nome $telefone`";

