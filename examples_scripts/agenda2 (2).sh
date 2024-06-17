#!/bin/bash
#AUTOR:Gustavo Hissi
#POLO:SJC
#enquanto termina diferente de zero
termina=0
while [ $ termina -eq 0 ]
do
#limpa tela
clear
#solicita nome
echo "Digite o nome do usuário: "
# le nome na variável name
read _name
#solicita telefone
echo "Digite o telefone de $_name: "
# le nome na variável phone
read _phone
#adiciona registro no arquivo
echo "Adicionando o registro no arquivo:"
echo "$_name $_phone" | tee --append agenda.dat 
echo "Registro adicionado"
#adicionar outro registro?
 echo "Deseja adicionar outro registro (S/N)?"
read _result
if [ $_result == N || $_result == n ]; then
termina=1
fi
done
echo "Programa encerrado."
