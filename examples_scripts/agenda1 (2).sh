#!/bin/bash
#AUTOR:Gustavo Hissi
#POLO:SJC
#limpa tela
clear
#requisita entrada de usu�rio
echo "Digite o nome de usu�rio que deseja procurar: "
#le usu�rio digitado e armazena na vari�vel name
read _name
#busca usu�rio desejado e imprime na tela
echo "Buscando nome $_name em agenda, por favor aguarde..."
grep -i $_name agenda.dat
