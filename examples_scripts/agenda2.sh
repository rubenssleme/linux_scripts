#!/bin/sh
# AUTOR:Adriana Talhari 
# POLO:SJC
echo "Digite o Nome, seguido do telefone, para inserir na genda: "
# Lê o conteúdo digitado pelo usuário
read NOMETEL
# Verifica se o contéudo lido pelo sistema (nome com telefone digitado pelo usuário) está vazio. Se estiver vazio, avisa o usuário e encerra a execução. senão, grava o conteúdo no final do arquivo agenda.dat
if [ -z "$NOMETEL" ]
then
	echo "Você não digitou os dados. "
	echo "  Digite o nome e telefone para gravar na agenda."
	exit 1
else
	echo $NOMETEL >> agenda.dat
	echo "Dados gravados na agenda!"
fi
