#!/bin/bash
#AUTOR:Everson
#POLO:ROSA DA CHINA
cp *.txt bkp
cd bkp
for i in *.txt
  do
    var=$(echo "$i" | cut -d '.' -f 1)
    echo $var
    mv "$i" "${var}.bak"
done
