#!/bin/bash
# AUTOR:Adriana Talhari 
# POLO:SJC
if [ -e *.txt ]
then
	dirAtual="`pwd`"
	if [ -d bkp ] #Verifica se já existe o diretório bkp
	then
		cp $dirAtual/*.txt $dirAtual/bkp #Copia os arquivos .txt do diretório atual para o diretório bkp
		cd $dirAtual/bkp 
		qtde=0

		for arquivo in $(ls -1 *.txt); do #Para cada arquivo com extensão txt, troca extensão para .bak
		  qtde=$(($qtde+1))
		  mv $arquivo $(echo $arquivo | awk -F. '{print $1".bak"}'); #Altera a extensão do arquivo atual
		done
		echo "Backup realizado com $qtde arquivo(s)."
	else
		mkdir bkp #Cria o diretório bkp, se ainda não existir
		cp $dirAtual/*.txt $dirAtual/bkp #Copia os arquivos .txt do diretório atual para o diretório bkp
		cd $dirAtual/bkp 
		qtde=0

		for arquivo in $(ls -1 *.txt); do #Para cada arquivo com extensão txt, troca extensão para .bak
		  qtde=$(($qtde+1))
		  mv $arquivo $(echo $arquivo | awk -F. '{print $1".bak"}'); #Altera a extensão do arquivo atual
		done
		echo "Backup realizado com $qtde arquivo(s)."
	fi
else
	echo "Nenhum arquivo com extensão .txt foi encontrado no diretório atual."
fi


