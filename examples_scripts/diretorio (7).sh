#!/bin/sh

################################################################
# autor     : Marcelo dos Santos <santos.marcelo@ufabc.edu.br>
# disciplina: Software Livre
# script    : diretorio.sh
#
# Diretório
#
# % ./diretorio.sh myDir
# file2 file1
################################################################

if [ $# -ne 1 ]
then
    echo "Número incorreto de parâmetro! (./diretorio.sh <diretório>)"
elif [ ! -d $1 ]
then
    echo "O argumento não é um diretório!"
else
    ls -r $1
fi
