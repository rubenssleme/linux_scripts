#!/bin/bash
#AUTOR:Jose Flaviano
#POLO:ROSA DA CHINA
 echo -n "Digite o arquivo: "
 read ARQUIVO
 

 test -d "$ARQUIVO" && echo "$ARQUIVO é um diretório"

 test -f "$ARQUIVO" && echo "$ARQUIVO é um arquivo"
 test -f "$ARQUIVO" -o -d "$ARQUIVO" || echo "O arquivo '$ARQUIVO' não foi encontrado"
 echo
cd $ARQUIVO # entra no diretorio encontrado
echo "Os arquivos dentro de $ARQUIVO SAO:"
ls -nt /home/flavianosousa/aluno/$ARQUIVO #mostra o que existe no diretorio

 #!/bin/bash
#if test $1 -eq $2
then
echo "$1 é igual a $2"
elif test $1 -lt $2
then
echo "$1 é menor que $2"
else
echo "$1 é maior que $2"
fi
