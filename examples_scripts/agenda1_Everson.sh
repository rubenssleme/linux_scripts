#!/bin/bash
#AUTOR:Everson
#POLO:ROSA DA CHINA
clear
echo "Consulta a agenda"
echo -n "Digite o nome: "
read nome
if grep -i $nome agenda.dat
then
    echo ""
else
    echo "Nome não encontrado"
fi
