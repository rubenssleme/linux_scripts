#!/bin/bash
#
# Luiz Henrique Ribeiro Coura da Silva - luiz.coura@ufabc.edu.br
# Software Livre - Exercício 2

CALENDAR="./agenda.dat"

echo "INSERIR CONTATO"
echo -n "Nome: "
read NAME
echo -n "Telefone: "
read PHONE

echo -e "$NAME\t$PHONE" >> $CALENDAR
