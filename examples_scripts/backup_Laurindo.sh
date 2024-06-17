#!/bin/sh 
#AUTOR:Laurindo
#POLO:ROSA DA CHINA
#AUTOR:Laurindo
#POLO:ROSAS DA CHINA
DIRE=’./bkp’ 

if [ -d $DIRE ]; then
mkdir $DIRE!
fi

mv *.txt bkp
cd bkp

for arquivo in *.txt 
do 
   mv ./"$arquivo" "${arquivo%txt}bkp";
done