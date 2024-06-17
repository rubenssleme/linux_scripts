#!/bin/bash

#autor:Mario Antonio Sesso Junior
#POLO:SJC

# Script para saudar o usuario com "Bom dia!", "Boa tarde!" ou "Boa noite!"
saudar() {
	# Obtem somente a hora atual
	hora=`date +%k`;
	if [ $hora -ge 0 ] && [ $hora -lt 5 ]; then
		# Se a hora for de 00h00 até 05h59
		echo "Boa madrugada!";
	elif [ $hora -gt 5 ] && [ $hora -lt 12 ]; then
		# Se a hora for de 06h00 até 11h59
		echo "Bom dia!";
	elif [ $hora -gt 12 ] && [ $hora -lt 18 ]; then
		# Se a hora for de 12h00 até 17h59
		echo "Boa tarde!";
	else
		# Se a hora for de 18h00 até 23h59
		echo "Boa noite!";
	fi
}
echo "`saudar`";
