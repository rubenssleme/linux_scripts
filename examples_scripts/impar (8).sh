#!/bin/bash

#autor:Mario Antonio Sesso Junior
#POLO:SJC

# Script que recebe um numero de 0 a 9 e determina se e par ou impar.

echo "Digite um numero de 0 a 9.";
read num;
if [ $num -ge 0 ] && [ $num -le 9 ]; then
	case $num in
		1|3|5|7|9) echo "Numero impar" ;;
		*) echo "Numero par" ;;
	esac
else
	echo "Digite um numero entre 0 e 9.";
fi 
