#!/bin/bash
#AUTOR: Jonathan Dias Moretti
#POLO:SJC
clear
echo -n "Entre com o um numero de 0 a 9: "
read num

case "$num" in

"0") echo "Numero Par";
;;

"1") echo "Numero Impar";
;;

"2") echo "Numero Par";
;;

"3") echo "Numero Impar";
;;

"4") echo "Numero Par";
;;

"5") echo "Numero Impar";
;;

"6") echo "Numero Par";
;;

"7") echo "Numero Impar";
;;

"8") echo "Numero Par";
;;

"9") echo "Numero Impar";
;;

*) echo "Você tem de entrar com um parâmetro válido" ;;
esac

exit

