#!/bin/bash
#AUTOR:Gustavo Hissi
#POLO:SJC
echo "Efetuando backup dos arquivos de *.txt do diretorio atual!"
#se o diretorio nao existe, criamos
mkdir -p bkp
cp *.txt bkp/*.bak
echo "Backup efetuado!"
