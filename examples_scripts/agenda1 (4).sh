#!/bin/bash
#AUTOR: Jonathan Dias Moretti
#POLO:SJC

clear
echo -n "Entre com o Nome para Pesquisar: "
read nome
resultado=`grep -i $nome agenda.dat`
echo $resultado	


