#!/bin/bash
####################################
#
# Backup to NFS mount script.
#
####################################
    
# What to backup. 
dir_estudos_files="/mnt/d/estudos"
dir_Any_Video_Converter="/mnt/d/Any-Video-Converter"
dir_files="/mnt/d/files"
# Where to backup to.
dest="/mnt/d/files-bkp"
    
# Create archive filename.
timestamp=$(date +'%d-%m-%Y-%H-%M-%S')
day=$(date +%A)

hostname=$"video-converter"
estudos=$"estudos"
files=$"files"

#archive_file="$hostname-$day.tgz"
archive_file="$hostname-${timestamp}.tar.bz2"
archive_file_estudos="$estudos-${timestamp}.tar.bz2"
archive_file_files="$files-${timestamp}.tar.bz2"


    
# Print start status message.
echo "Backing up $bkp_Any_Video_Converter to $dest/$archive_file"
date
echo
    
# Backup the files using tar.
pwd
tar jcvf $dest/$archive_file -P $dir_Any_Video_Converter
pwd
tar jcvf $dest/$archive_file_estudos -P $dir_estudos_files
pwd
tar jcvf $dest/$archive_file_files -P $dir_files

# Print end status message.
echo "Backup finished"
date
    
# Long listing of files in $dest to check file sizes.
ls -lh $dest
