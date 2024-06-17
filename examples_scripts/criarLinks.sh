#!/bin/bash
echo -n Digite seu diretorio: 
read DIR
echo -e "Link de qual diretorio?:  $DIR\n" 
echo -e "Nome do Link:  $NDIR\n" 
read NDIR
LINK="/home/m7/Desktop/$NDIR"
sudo ln -s  $DIR   $LINK
echo -e "Diretorio criado com sucesso!!!:  $DIR\n"

