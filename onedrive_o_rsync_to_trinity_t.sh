#!/bin/bash
###########################################
#
# Backup to files using rsync  in script.
#
###########################################
    
# What to backup. 
fromTrinityT="/media/trinity_share/"
#dir_estudos_files="/mnt/d/estudos"
#dir_files="/mnt/d/files"
# Where to backup to.
#dest="/mnt/f/files-bkp"
toOnedriveO="/media/onedrive_share/"
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
echo ---------------- "Rsync from Trinity_T: ${fromTrinityT} to Onedrive_O: $toOnedriveO" ---------------- >> logs/rsync.log
date >> logs/rsync.log
echo

#tar jcvf $dest/$archive_file -P $dir_Any_Video_Converter
#rsync -avhrz  --delete --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/'  "$dirAnyVideo"  "$destAnyVideo${day_week}"
rsync -azhu --delete-after --ipv6 --progress --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='others_old'  "$toOnedriveO"  "$fromTrinityT"
#rsync -azhP --delete --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='others_old' /media/trinity_share/ onedrive/
#tar jcvf $dest/$archive_file_estudos -P $dir_estudos_files
#pwd
#tar jcvf $dest/$archive_file_files -P $dir_files

# Print end status message.
#echo ----------------"Backup finished"---------------- >> logs/rsync.log
date  >> logs/rsync.log
echo

# Long listing of files in $dest to check file sizes.
ls -lh $toOnedriveO >> logs/rsync.log
echo ----------------"Backup finished"---------------- >> logs/rsync.log
echo
