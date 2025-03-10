#!/bin/sh

# AUTOR:Adriana Talhari 
# POLO:SJC

echo "Digite o nome para buscar na agenda: "
# Lê o nome digitado pelo usuário
read NOME
# Verifica se o contéudo lido pelo sistema (nome digitado pelo usuário) está vazio. Se estiver vazio, avisa o usuário e encerra a execução. senão, filtra o arquivo agenda.dat para localizar as linhas que contém o nome digitado e exibe na tela..
if [ -z $NOME ]
then
	echo "Você não digitou o nome. "
	echo "  Digite o nome para poder buscá-lo."
	exit 1
else
	echo "Resultado(s) encontrado(s): \n `grep $NOME agenda.dat`"
fi

