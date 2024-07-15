#!/bin/bash
###########################################
#
# Backup to files using rsync  in script.
#
###########################################
    
# What to backup. 
#dirAnyVideo="/mnt/f/"
fromOracleF="/mnt/f/"
#dir_estudos_files="/mnt/d/estudos"
#dir_files="/mnt/d/files"
# Where to backup to.
#dest="/mnt/f/files-bkp"
#destAnyVideo="/media/trinity_share/"
toTrinityShareT="/media/trinity_share/"
#dest_estudos_files="/mnt/f/estudos"
#dest_files="/mnt/f/files"
    
# Create archive filename.
timestamp=$(date +'%d-%m-%Y-%H-%M-%S')
day=$(date +%A)
day_week=("$day-$timestamp")

# Status de saída padrão da função trinityshare
fromOracleDIR=/mnt/f/files/
toTrinityShareDIR=/media/trinity_share/files/
#find <$DIR> -type d -empty
trinityshare() {
  echo "" >> logs/rsync.log 
  echo "Verificando Diretorio Trinity_share!" >> logs/rsync.log
  ls -l $fromOracleDIR > /dev/null
}
################### Inicio do If Oracle ################
trinityshare
if [ $? -ne 0 ]; then
# Executa caso esteja montado
echo "Diretorio $fromOracleDIR  vazio!" >> logs/rsync.log

else
# Executa caso esteja montado
echo "Ha conteudo no diretorio! $fromOracleDIR " >> logs/rsync.log

fi
################### Fim do If Oracle ################
# Status de saída padrão da função onedriveshare
onedriveshare() {
  echo "" >> logs/rsync.log 
  echo "Verificando Diretorio Trinity_shares!" >> logs/rsync.log
  ls -l $toTrinityShareDIR > /dev/null
}
################### Inicio do If Trinity ################
onedriveshare
if [ $? -ne 0 ]; then
echo "Diretorio $toTrinityShareDIR  vazio!" >> logs/rsync.log

else
# Executa caso esteja montado
echo "Ha conteudo no diretorio! $toTrinityShareDIR " >> logs/rsync.log
# Print start status message.
echo >> logs/rsync.log
echo ---------------- "Rsync from Oracle_F: ${fromOracleF} to Trinity_T: $toTrinityShareT" ------- >> logs/rsync.log
date >> logs/rsync.log
echo   
# Backup the files using tar.

#tar jcvf $dest/$archive_file -P $dir_Any_Video_Converter
#rsync -avhrz  --delete --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/'  "$dirAnyVideo"  "$destAnyVideo${day_week}"

#rsync -azhu --delete-after --ipv6 --progress --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='ext_hd' "$fromOracleF"  "$toTrinityShareT"
rsync -azhu --log-file='logs/rsync.log' --delete-after --ipv6 --progress  --exclude='$RECYCLE.BIN/' --exclude='/System Volume Information/' --exclude='DumpStack.log.tmp' --exclude='desktop.ini' --exclude='ext_hd'  "$fromOracleF"  "$toTrinityShareT"
#tar jcvf $dest/$archive_file_estudos -P $dir_estudos_files
#pwd
#tar jcvf $dest/$archive_file_files -P $dir_files
#tar jcvf $dest/$archive_file_estudos -P $dir_estudos_files

#tar jcvf $dest/$archive_file_files -P $dir_files
#tar jcvf $dest/$archive_file_estudos -P $dir_estudos_files

#tar jcvf $dest/$archive_file_files -P $dir_files

date  >> logs/rsync.log
echo >> logs/rsync.log
# Long listing of files in $dest to check file sizes.
ls -lh $toTrinityShareT >> logs/rsync.log
echo ----------------"Backup to Trinity_T: finished"---------------- >> logs/rsync.log
echo >> logs/rsync.log

#bash linux_scripts/trinity_t_rsync_to_onedrive_o.sh
fi
################### Fim do If Trinity ################