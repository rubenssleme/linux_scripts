#!/bin/sh
#autor: Paulo Vitor Mira Fonseca
#Polo: SJC


if ! [ -d "bkp" ]; 
then
        mkdir bkp
fi

for f in *.txt
do
	cp $f "bkp/$f.bak"

done


