#!/bin/bash
###########################################
#
# Backup to files using rsync  in script.
#       neo_d_rsync_to_oracle_f
###########################################
cd ~
# What to backup.
#dirAnyVideo="/mnt/d/"

android_files="/mnt/d/android_files"
any_video_converter="/mnt/d/Any_Video_Converter"
documentos="/mnt/d/Documentos"
# Where to backup to.


dest_android_files="/mnt/m"
dest_any_video_converter="/mnt/m"
dest_documentos="/mnt/m/"
#dest_files="/mnt/m/files"


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
echo
echo ---------------- "Rsync from Neo_D: ${fromNeoD} to Mara_m: $toMaraM" ---------------- >> logs/rsync.log
date >> logs/rsync.log
echo

# Backup the files using tar.

#tar jcvf $dest/$archive_file -P $dir_Any_Video_Converter
#rsync -avhrz  --delete --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/'  "$dirAnyVideo"  "$destAnyVideo${day_week}"
#rsync -azhu --log-file='logs/rsync.log' --delete-after --ipv6 --progress    --exclude='.git' --exclude='downloads'  --exclude='ubuntubkp'  --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='ext_hd' --exclude='bkp_files'  "$fromNeoD"  "$toMaraM"

echo ---------------- Do "$android_files" to "$dest_android_files""/android_files" ---------------- >> logs/rsync.log 
rsync -azhu --log-file='logs/rsync.log' --delete-after --ipv6 --progress  --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='ext_hd' --exclude='files_bkp'   "$android_files"  "$dest_android_files"
echo ----------------"Backup finished"---------------- >> logs/rsync.log
echo

echo ---------------- Do "$any_video_converter" to "$dest_any_video_converter""/any_video_converter" ---------------- >> logs/rsync.log 
rsync -azhu --log-file='logs/rsync.log' --delete-after --ipv6 --progress  --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='ext_hd' --exclude='files_bkp'   "$any_video_converter"  "$dest_any_video_converter"
echo ----------------"Backup finished"---------------- >> logs/rsync.log
echo

echo ---------------- Do "$documentos" to "$dest_documentos""/Documentos" ---------------- >> logs/rsync.log 
rsync -azhu --log-file='logs/rsync.log' --delete-after --ipv6 --progress  --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='ext_hd' --exclude='files_bkp'   "$documentos"  "$dest_documentos"
echo ----------------"Backup finished"---------------- >> logs/rsync.log
echo

#echo ----------------"Do $android_files to $dest_android_files"---------------- >> logs/rsync.log 
#rsync -azhu --log-file='logs/rsync.log' --delete-after --ipv6 --progress  --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='ext_hd' --exclude='files_bkp'   "$fromNeoD"  "$toMaraM"  

#tar jcvf $dest/$archive_file_estudos -P $dir_estudos_files
#pwd
#tar jcvf $dest/$archive_file_files -P $dir_files

# Print end status message.
echo ----------------"Backup finished"---------------- >> logs/rsync.log
echo
# Long listing of files in $dest to check file sizes.
ls -lh $toMaraM >> logs/rsync.log
echo
echo ----------------"Backup to Oracle_F: finished"---------------- >> logs/rsync.log
echo
date  >> logs/rsync.log
echo ----------------"Rubens Leme"--------------------------------- >> logs/rsync.log