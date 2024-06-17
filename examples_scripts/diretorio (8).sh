#!/bin/bash

# Script que exibe os arquivos do diretório
#autor:Mario Antonio Sesso Junior
#POLO:SJC

diretorio() {
	if [ $# -gt 1 ]; then
		echo "Numero de parametros digitados maior que 1.";
	else
		if [ -d $1 ]; then
			# Exibe os arquivos mais novos ou os que foram modificados recentemente
			ls -lt $1;
		else
			# Se o caminho não existir ou não for um diretorio
			echo "Nao e um diretorio.";
		fi
	fi
}
echo "Digite o nome de um diretorio para exibir os arquivos.";
read nomedir;
echo "`diretorio $nomedir`";
