#!/bin/bash
#AUTOR:Gustavo Hissi
#POLO:SJC
#limpa tela
clear
#solicita entrada de numero
echo "Digite um numero de 0 a 9:"
#le o numero na variavel number
read_number
#verifica resto da divisao por 2
_result=$(($number%2))
#testa e imprime resultado
case "$_result" in
0) echo "Este numero é par";;
*) echo "Este numero é impar" ;;
esac