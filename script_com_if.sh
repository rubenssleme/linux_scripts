#!/bin/bash
####################################
#
# Backup to NFS mount script.
#
####################################
    
# What to backup. 


# Status de saída padrão da função trinityshare
TrinityDIR=/media/trinity_share/files/
OnedriveDIR=/media/onedrive_share/files/
#find <$DIR> -type d -empty
trinityshare() {
  echo "Verificando Diretorio Trinity_share!"
  ls -l $TrinityDIR > /dev/null
}
trinityshare
if [ $? -ne 0 ]; then
echo "Diretorio $TrinityDIR  vazio!"

else
echo "Ha conteudo no diretorio! $TrinityDIR "
rclone --vfs-cache-mode  writes mount OneDrive: /media/onedrive_share &
fi
# Status de saída padrão da função onedriveshare
onedriveshare() {
  echo ""
  echo "Verificando Diretorio Onedrive_shares!"
  ls -l $OnedriveDIR > /dev/null
}
onedriveshare
if [ $? -ne 0 ]; then
echo ""
echo "Diretorio $OnedriveDIR  vazio!"
bash linux_scripts/trinity_t_rsync_to_onedrive_o.sh
else
echo ""
echo "Ha conteudo no diretorio! $OnedriveDIR "
#rclone --vfs-cache-mode  writes mount OneDrive: /media/onedrive_share &
bash linux_scripts/trinity_t_rsync_to_onedrive_o.sh
fi
