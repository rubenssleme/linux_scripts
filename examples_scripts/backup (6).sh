#!/bin/bash
#
# Luiz Henrique Ribeiro Coura da Silva - luiz.coura@ufabc.edu.br
# Software Livre - Exercício 6

BACKUP="bkp"

while read FILE; do
	[ ! -d $BACKUP ] && mkdir $BACKUP
	cp $FILE $BACKUP/$FILE.$BACKUP
done < <(find . -maxdepth 1 -iname "*.txt" 2>/dev/null)
