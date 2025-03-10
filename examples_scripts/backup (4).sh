#/bin/bash
#AUTOR: Jonathan Dias Moretti
#POLO:SJC
clear
EXTENSAO_ENTRADA="txt"      # Atual extensão dos arquivos
EXTENSAO_SAIDA="bak"      # Nova extensão que terão os arquivos
NOME=""            # Nome do arquivo, sem extensão
NOVO_NOME=""         # Nome do arquivo após ser renomeado

#--- RENOMEIA ---#
for ARQUIVO in *."$EXTENSAO_ENTRADA"
do
   NOVO_NOME=$(basename "$ARQUIVO" "$EXTENSAO_ENTRADA")"$EXTENSAO_SAIDA"
   cp "$ARQUIVO" bkp/"$NOVO_NOME" && echo " $ARQUIVO -> $NOVO_NOME"
done
