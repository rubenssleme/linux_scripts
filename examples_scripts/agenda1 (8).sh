#!/bin/bash

#autor:Mario Antonio Sesso Junior
#POLO:SJC


# Consultar as informações do arquivo "agenda.dat"
agenda() {
	num=`cat agenda.dat | grep "$1" | wc -l`;
	if [ $num -gt 0 ]; then
		resultado=`cat agenda.dat | grep "$1"`;
		echo "Encontrei: $resultado";
	else 
		echo "Não encontrei este nome." ;
	fi
}
echo "Digite o nome que deseja obter o telefone.";
read nome;
echo "`agenda $nome`";


