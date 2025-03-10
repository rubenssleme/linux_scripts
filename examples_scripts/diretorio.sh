#!/bin/bash
# AUTOR:Adriana Talhari 
# POLO:SJC

if [ $# -eq 0 ]
then
	#Se não digitar algum parâmetro, exibe mensagem
	echo "É necessário digitar o nome de algum diretório."
	#Se digitar mais de 1 parâmetro como nome do diretório, exibe mensagem
elif [ ! $# -eq 1 ]
	then
	echo "Digite apenas 1 parâmetro como nome diretório."
else
#Guarda o parâmetro digitado na variável diretorio
diretorio="$1"
#Localiza todos os diretórios com o nome digitado. -type d lista apenas diretórios, desconsiderando os arquivos
retornoFind="`sudo find / -type d -name $1`"
	if [ "$retornoFind" = "" ]
	then
		#Se não encontrar nenhum diretório com o nome igual ao parâmetro digitado, exibe mensagem
		echo "Não existe diretório com o nome $diretorio!"
	else
		#Se exisitir o diretório, lista seu conteúdo. -G não mostra informações do grupo do arquivo. -t exibe por por ordem de modificação
		ls -l -G -t $retornoFind
	fi
fi
