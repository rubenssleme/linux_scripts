#!/bin/sh

################################################################
# autor     : Marcelo dos Santos <santos.marcelo@ufabc.edu.br>
# disciplina: Software Livre
# script    : impar.sh
#
# Impar ou Par
#
# % ./impar.sh
# Entre com um número (entre 0 e 9): <RET>
# 9
# impar
################################################################

numero=0

echo "Entre com um número (entre 0 e 9): <RET>"
read numero

case $numero in
    0) echo "par";;
    1) echo "impar";;
    2) echo "par";;
    3) echo "impar";;
    4) echo "par";;
    5) echo "impar";;
    6) echo "par";;
    7) echo "impar";;
    8) echo "par";;
    9) echo "impar";;
    *) echo "Entre com um parâmetro válido!";;
esac
