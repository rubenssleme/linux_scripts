#!/bin/sh

################################################################
# autor     : Marcelo dos Santos <santos.marcelo@ufabc.edu.br>
# disciplina: Software Livre
# script    : backup.sh
#
# Backup de Arquivos Txt
#
# % ./backup.sh
# mkdir: created directory ‘bkp’
# ‘file1.txt’ -> ‘bkp/file1.bkp’
# ‘file2.txt’ -> ‘bkp/file2.bkp’
################################################################

count="$(ls -l *.txt | wc -l)"

if [ $count -eq 0 ]
then
    exit
elif [ ! -d "bkp" ]
then
    mkdir -v bkp
fi

for file in *.txt
do
    cp -v "$file" bkp/"${file%%.*}".bkp
done
