#!/bin/bash
###########################################
#
# Backup to files using rsync  in script.
#       neo_d_rsync_to_voyager1_f
###########################################
    
# What to backup. 
#dirAnyVideo="/mnt/d/"
fromNeoD="/mnt/d/"
#dir_estudos_files="/mnt/d/estudos"
#dir_files="/mnt/d/files"
# Where to backup to.
#dest="/mnt/f/files-bkp"
#destAnyVideo="/mnt/f/"
toOracleF="/mnt/f/"
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
echo ---------------- "Rsync from Neo_D: ${fromNeoD} to Voyager1_F: $toOracleF" ---------------- >> logs/rsync.log
date >> logs/rsync.log
echo
    
# Backup the files using tar.

#tar jcvf $dest/$archive_file -P $dir_Any_Video_Converter
#rsync -avhrz  --delete --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/'  "$dirAnyVideo"  "$destAnyVideo${day_week}"
rsync -azhu --log-file='logs/rsync.log' --delete-after --ipv6 --progress  --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='ext_hd' --exclude='files_bkp'  "$fromNeoD"  "$toOracleF"

#echo ----------------"do ext_disk_voyager_01 to disk_neo"---------------- >> logs/rsync.log 
#rsync -azhu --log-file='logs/rsync.log' --delete-after --ipv6 --progress  --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='ext_hd' --exclude='files_bkp'   "$destAnyVideo" "$dirAnyVideo"  

#tar jcvf $dest/$archive_file_estudos -P $dir_estudos_files
#pwd
#tar jcvf $dest/$archive_file_files -P $dir_files

# Print end status message.
#echo ----------------"Backup finished"---------------- >> logs/rsync.log
date  >> logs/rsync.log
echo
    
# Long listing of files in $dest to check file sizes.
ls -lh $toOracleF >> logs/rsync.log
echo ----------------"Backup finished"---------------- >> logs/rsync.log
echo