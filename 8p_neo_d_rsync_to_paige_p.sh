#!/bin/bash
###########################################
#
# Backup to files using rsync  in script.
#       neo_d_rsync_to_oracle_f
###########################################
cd ~
# What to backup.

Mozilla_Thunderbird="/mnt/d/Mozilla_Thunderbird"
notebook_act="/mnt/d/notebook_act"
wsl_backup="/mnt/d/wsl_backup"
#documentos="/mnt/d/Documentos"
#dirAnyVideo="/mnt/d/"

# Where to backup to.


dest_Mozilla_Thunderbird="/mnt/p/paige-share"
dest_notebook_act="/mnt/p/paige-share"
dest_wsl_backup="/mnt/p/paige-share"
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

echo ---------------- Do "$Mozilla_Thunderbird" to "$dest_Mozilla_Thunderbird""/Mozilla_Thunderbird" ---------------- >> logs/rsync.log 
rsync -azhu --log-file='logs/rsync.log' --delete-after --ipv6 --progress  --exclude='.git/*' --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='ext_hd' --exclude='files_bkp'   "$Mozilla_Thunderbird"  "$dest_Mozilla_Thunderbird"
echo ----------------"Backup finished"---------------- >> logs/rsync.log
echo

echo ---------------- Do "$notebook_act" to "$dest_notebook_act""/notebook_act" ---------------- >> logs/rsync.log 
rsync -azhu --log-file='logs/rsync.log' --delete-after --ipv6 --progress  --exclude='.git/*' --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='ext_hd' --exclude='files_bkp'   "$notebook_act"  "$dest_notebook_act"
echo ----------------"Backup finished"---------------- >> logs/rsync.log
echo

echo ---------------- Do "$wsl_backup" to "$dest_wsl_backup""/wsl_backup" ---------------- >> logs/rsync.log 
rsync -azhu --log-file='logs/rsync.log' --delete-after --ipv6 --progress  --exclude='.git/*' --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='ext_hd' --exclude='files_bkp'   "$wsl_backup"  "$dest_wsl_backup"
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