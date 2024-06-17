#!/bin/sh 
#AUTOR:Laurindo
#POLO:ROSA DA CHINA
HOUR=’date +%H’ 

if [ $HOUR -gt “00” ] || [ $NUM -lt “12” ]; then
   echo "Bom dia!" 
elif [ $HOUR -gt “11” ] || [ $NUM -lt “18” ]; then
   echo "Boa Tarde!" 
else 
   echo "Boa Noite!" 
fi