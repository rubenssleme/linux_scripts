#!/bin/sh

################################################################
# autor     : Marcelo dos Santos <santos.marcelo@ufabc.edu.br>
# disciplina: Software Livre
# script    : agenda1.sh
#
# Agenda Telefônica
#
# % ./agenda1.sh
# Entre com o nome: <RET>
# Felipe
# Felipe 11-123456
################################################################

nome=""
echo "Entre com o nome: <RET>"
read nome
grep "\b$nome\b" agenda.dat
