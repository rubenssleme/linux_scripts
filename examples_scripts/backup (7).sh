#!/bin/bash

#autor:Mario Antonio Sesso Junior
#POLO:SJC


# Script que faz um backup de todos os arquivos do diretorio corrente que possuam extensao .txt. 
echo "Backup de arquivos .txt do diretorio corrente.";
# Cria o diretório bkp se não existir. Caso exista, nao exibe mensagem de erro.
mkdir -p bkp;
# Faz o backup de cada arquivo no diretorio bkp/
for arquivo in *.txt
do
	# Obtem o nome do arquivo sem a extensao .txt
	nomesemextensao=`basename $arquivo .txt`;
	# Da um novo nome com a extensao .bak para o arquivo
	novonome="$nomesemextensao.bak";
	# Copia os arquivos para o diretorio bkp/ com a extensao .bak
	cp $arquivo ./bkp/$novonome
	if [ $? -eq 0 ] ; then 
		echo "Backup do arquivo $arquivo ok! Destino: ./bkp/$novonome";
	else
		echo "Erro!";
	fi
done
