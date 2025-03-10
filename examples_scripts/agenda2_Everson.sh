#!/bin/bash
#AUTOR:Everson
#POLO:ROSA DA CHINA
cont="s"
while [ $cont == "s" ]
do
    echo "Agenda - Inserir dados"
    echo -n "Digite o nome: "
    read nome
    echo -n "Digite o Telefone: "
    read telefone
    echo "$nome  $telefone" >> agenda.dat
    read -p "Continua s/n ? " cont
done

    
