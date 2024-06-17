#!/bin/bash
#AUTOR:Cezar
#POLO:ROSA DA CHINA

data=$(date +%H)

if [ $data -gt 6 ] && [ $data -lt 12 ]; then
    echo "Bom dia!"
elif [ $data -gt 12 ] && [ $data -lt 18 ]; then
    echo "Boa tarde!"
else
    echo "Boa noite!"
fi