#!/bin/sh
#AUTOR:Joao Paulo
#POLO:SJC
echo "Entre com um número entre 0 e 9. " 
read NUM

case $NUM in
	1 | 3 | 5 | 7 | 9) echo "$NUM é ímpar" ;;
	0 | 2 | 4 | 6 | 8) echo "$NUM é par" ;;
	*) echo "Número inválido" ;;
esac