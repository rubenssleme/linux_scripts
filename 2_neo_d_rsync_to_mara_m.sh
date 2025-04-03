#!/bin/bash
###########################################
#
# Backup to files using rsync  in script.
#       neo_d_rsync_to_oracle_f
###########################################
cd ~
# What to backup.

estudos="/mnt/d/estudos"
files="/mnt/d/files"
iso_s="/mnt/d/iso_s"
#documentos="/mnt/d/Documentos"
#dirAnyVideo="/mnt/d/"

# Where to backup to.


dest_estudos="/mnt/m"
dest_files="/mnt/m"
dest_iso_s="/mnt/m/"
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

echo ---------------- Do "$estudos" to "$dest_estudos""/estudos" ---------------- >> logs/rsync.log 
rsync -azhu --log-file='logs/rsync.log' --delete-after --ipv6 --progress  --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='ext_hd' --exclude='files_bkp'   "$estudos"  "$dest_estudos"
echo ----------------"Backup finished"---------------- >> logs/rsync.log
echo

echo ---------------- Do "$files" to "$dest_files""/files" ---------------- >> logs/rsync.log 
rsync -azhu --log-file='logs/rsync.log' --delete-after --ipv6 --progress  --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='ext_hd' --exclude='files_bkp'   "$files"  "$dest_files"
echo ----------------"Backup finished"---------------- >> logs/rsync.log
echo

echo ---------------- Do "$iso_s" to "$dest_iso_s""/iso_s" ---------------- >> logs/rsync.log 
rsync -azhu --log-file='logs/rsync.log' --delete-after --ipv6 --progress --exclude='/.git/' --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='ext_hd' --exclude='files_bkp'   "$iso_s"  "$dest_iso_s"
echo ----------------"Backup finished"---------------- >> logs/rsync.log
echo

#echo ----------------"Do $android_files to $dest_android_files"---------------- >> logs/rsync.log 
#rsync -azhu --log-file='logs/rsync.log' --delete-after --ipv6 --progress  --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='ext_hd' --exclude='files_bkp'   "$fromNeoD"  "$toMaraM"  

#tar jcvf $dest/$archive_file_estudos -P $dir_estudos_files
#pwd
#tar jcvf $dest/$archive_file_files -P $dir_files .git

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