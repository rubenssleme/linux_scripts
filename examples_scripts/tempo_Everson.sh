#!/bin/bash
#AUTOR:Everson
#POLO:ROSA DA CHINA
h=`date +%H`
if [ $h -gt 17 ]
   then
      echo "boa noite"
   else
       if [ $h -gt 11 ]
          then
             echo "Boa tarde"
          else
             echo "Bom dia"
       fi
fi

