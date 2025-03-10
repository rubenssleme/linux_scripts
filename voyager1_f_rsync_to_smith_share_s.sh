#!/bin/bash
###########################################
#
# Backup to files using rsync  in script.
#
###########################################
    
# What to backup. 
#dirAnyVideo="/mnt/f/"
fromVoyager1F="/mnt/f/"
#dir_estudos_files="/mnt/d/estudos"
#dir_files="/mnt/d/files"
# Where to backup to.
#dest="/mnt/f/files-bkp"
#destAnyVideo="/media/trinity_share/"
toSmithShareS="/media/smith_share/"
#dest_estudos_files="/mnt/f/estudos"
#dest_files="/mnt/f/files"
    
# Create archive filename.
timestamp=$(date +'%d-%m-%Y-%H-%M-%S')
day=$(date +%A)
day_week=("$day-$timestamp")

#hostname=$"video-converter"
#estudos=$"estudos"
#files=$"files"

#archive_file="$hostname-$day.tgz"
#archive_file="$hostname-${timestamp}.tar.bz2"
#archive_file_estudos="$estudos-${timestamp}.tar.bz2"
#archive_file_files="$files-${timestamp}.tar.bz2"

#Create dir por dia semana
#mkdir $destAnyVideo${day_week}
    
# Print start status message.
echo ---------------- "Rsync from Voyager1_F: ${fromVoyager1F} to Trinity_T: $toSmithShareS" ---------------- >> logs/rsync.log
date >> logs/rsync.log
echo
    
# Backup the files using tar.

#tar jcvf $dest/$archive_file -P $dir_Any_Video_Converter
#rsync -avhrz  --delete --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/'  "$dirAnyVideo"  "$destAnyVideo${day_week}"

rsync -azhu --delete-after --ipv6 --progress --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='ext_hd' --exclude='files_bkp' "$fromVoyager1F" "$toSmithShareS"
#tar jcvf $dest/$archive_file_estudos -P $dir_estudos_files
#pwd
#tar jcvf $dest/$archive_file_files -P $dir_files

date  >> logs/rsync.log
echo
    
# Long listing of files in $dest to check file sizes.
ls -lh $toSmithShareS >> logs/rsync.log
echo ----------------"Backup finished"---------------- >> logs/rsync.log
echo