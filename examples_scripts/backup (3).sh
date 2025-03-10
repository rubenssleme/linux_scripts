#!/bin/sh
#AUTOR:Joao Paulo
#POLO:SJC
rm -rf bkp;

for arquivo in *.txt
do
	mkdir -p bkp;

	cp $arquivo bkp/$arquivo.bak
done