#!/bin/bash
####################################
#
# Backup to NFS mount script.
#
####################################
    
# What to backup. 
# dir_estudos_files="/mnt/d/estudos"
dir_Any_Video_Converter="/mnt/d/projetos"
# dir_files="/mnt/d/files"
# dir_docs="/mnt/d/Documentos"
# Where to backup to.
dest="/mnt/m/bkp_files/"
    
# Create archive filename.
timestamp=$(date +'%d-%m-%Y-%H-%M-%S')
day=$(date +%A)
day_week=("$day-$timestamp")
#Create dir por dia semana
mkdir $dest/${day_week}
dest_final="$dest/${day_week}"

hostname=$"projetos"
# estudos=$"estudos"
# files=$"files"
# docs="documentos"

#archive_file="$hostname-$day.tgz"

archive_file="$hostname-${timestamp}.tar.bz2"
# archive_file_docs="$docs-${timestamp}.tar.bz2"
# archive_file_estudos="$estudos-${timestamp}.tar.bz2"
# archive_file_files="$files-${timestamp}.tar.bz2"


    
#Create dir por dia semana
#mkdir $destAnyVideo${day_week}
    
# Print start status message.
echo ---------------- "Rsync in $bkp_Any_Video_Converter to $dest/$archive_file" ---------------- >> logs/rsync.log
date >> logs/rsync.log
echo
 
    
# Backup the files using tar.
pwd
tar jcvf $dest_final/$archive_file -P $dir_Any_Video_Converter
pwd
# tar jcvf $dest_final/$archive_file_docs -P $dir_docs
# pwd
# tar jcvf $dest_final/$archive_file_estudos -P $dir_estudos_files
# pwd
# tar jcvf $dest_final/$archive_file_files -P $dir_files

# Print end status message.
#echo ----------------"Backup finished"---------------- >> logs/rsync.log
date  >> logs/rsync.log
echo
    
# Long listing of files in $dest to check file sizes.
ls -lh $dest >> logs/rsync.log
echo ----------------"Backup finished"---------------- >> logs/rsync.log
echo