#!/bin/sh

#autor: Paulo Vitor Mira Fonseca
#Polo: SJC

hour_var=$(date +"%I")

if [ $hour_var -lt 6 ] || [ $hour_var -gt 18  ] ; then
	echo "noite"
elif [ $hour_var -lt 12 ] ; then
	echo "dia"
else
	echo "tarde"
fi



