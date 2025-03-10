#!/bin/sh
#AUTOR:Joao Paulo
#POLO:SJC
HORA=$(date +"%H")

if [ "$HORA" -gt 5 ] && [ "$HORA" -lt 12 ]; then
	echo "Bom dia!"
elif [ "$HORA" -gt 11 ] && [ "$HORA" -lt 19 ]; then
	echo "Boa tarde!"
else
	echo "Boa noite!"
fi