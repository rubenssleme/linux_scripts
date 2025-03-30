#!/bin/bash
###########################################
#
# Backup to files using rsync  in script.
#
###########################################
# What to backup. 
fromPaige="/mnt/paige-share/"
#dir_estudos_files="/mnt/d/estudos"
#dir_files="/mnt/d/files"
# Where to backup to.
#dest="/mnt/f/files-bkp"
toOnedriveO="/home/ruben/onedrive/"
#dest_estudos_files="/mnt/f/estudos"
#dest_files="/mnt/f/files"
# Create archive filename.
timestamp=$(date +'%d-%m-%Y-%H-%M-%S')
day=$(date +%A)
day_week=("$day-$timestamp")

#Create dir por dia semana
#mkdir $destAnyVideo${day_week}


# Status de saída padrão da função trinityshare
fromTrinityDIR=/mnt/paige-share/files/
toOnedriveDIR=/home/ruben/onedrive/files/
#find <$DIR> -type d -empty
trinityshare() {
  echo "" >> logs/rsync.log 
  echo "Verificando Diretorio Trinity_share!" >> logs/rsync.log
  ls -l $fromTrinityDIR > /dev/null
}
################### Inicio do If Oracle ################
trinityshare
if [ $? -ne 0 ]; then
# Executa caso esteja montado
echo "Diretorio $fromTrinityDIR  vazio!" >> logs/rsync.log
sudo mount -a >> logs/rsync.log
exit >> logs/rsync.log
else
# Executa caso esteja montado
echo "Ha conteudo no diretorio! $fromTrinityDIR " >> logs/rsync.log

fi
################### Fim do If Oracle ################
# Status de saída padrão da função onedriveshare
onedriveshare() {
  echo "" >> logs/rsync.log 
  echo "Verificando Diretorio Trinity_shares!" >> logs/rsync.log
  ls -l $toOnedriveDIR > /dev/null
}
################### Inicio do If Trinity ################
onedriveshare
if [ $? -ne 0 ]; then
echo "Diretorio $toOnedriveDIR  vazio!" >> logs/rsync.log
exit >> logs/rsync.log
else
# Executa caso esteja montado
echo "Ha conteudo no diretorio! $toOnedriveDIR " >> logs/rsync.log
# Print start status message.
echo >> logs/rsync.log
echo ---------------- "Rsync from Trinity_T: ${fromPaige} to Onedrive_O: $toOnedriveO" ------- >> logs/rsync.log
date >> logs/rsync.log
echo   
# Backup the files using tar.

#tar jcvf $dest/$archive_file -P $dir_Any_Video_Converter
#rsync -avhrz  --delete --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/'  "$dirAnyVideo"  "$destAnyVideo${day_week}"

#rsync -azhu --delete-after --ipv6 --progress --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='ext_hd' "$fromOracleF"  "$toTrinityShareT"
rsync -azhu --log-file='logs/rsync.log' --delete-after --ipv6 --progress  --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='ext_hd'  "$fromPaige"  "$toOnedriveO"
#rsync -azhu --delete-after --ipv6 --progress --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='others_old'  "$fromTrinityT"  "$toOnedriveO"
#tar jcvf $dest/$archive_file_files -P $dir_files
#tar jcvf $dest/$archive_file_estudos -P $dir_estudos_files

#tar jcvf $dest/$archive_file_files -P $dir_files

date  >> logs/rsync.log
echo >> logs/rsync.log
# Long listing of files in $dest to check file sizes.
ls -lh $toOnedriveO >> logs/rsync.log
echo ----------------"Backup to Onedrive_O: finished"---------------- >> logs/rsync.log
echo >> logs/rsync.log

#bash linux_scripts/trinity_t_rsync_to_onedrive_o.sh
fi
################### Fim do If Trinity ################