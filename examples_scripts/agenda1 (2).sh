#!/bin/bash
#AUTOR:Gustavo Hissi
#POLO:SJC
#limpa tela
clear
#requisita entrada de usuário
echo "Digite o nome de usuário que deseja procurar: "
#le usuário digitado e armazena na variável name
read _name
#busca usuário desejado e imprime na tela
echo "Buscando nome $_name em agenda, por favor aguarde..."
grep -i $_name agenda.dat
