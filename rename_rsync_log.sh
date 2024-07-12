#!/bin/bash
###########################################
#
# Backup to files using rsync  in script.
#       neo_d_rsync_to_voyager1_f
###########################################
    
cd ~/logs
mv rsync.log7 rsync.log8
mv rsync.log6 rsync.log7
mv rsync.log5 rsync.log6
mv rsync.log4 rsync.log5
mv rsync.log3 rsync.log4
mv rsync.log2 rsync.log3
mv rsync.log1 rsync.log2
mv rsync.log rsync.log1
#touch rsync.log 
rm -rf rsync.log8
  
