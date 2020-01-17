#!/bin/sh

#
# Script to remove Signal backups from the previous day
#

backup_dir="/media/pi/External/Syncthing/Signal Backups"
rm_date=`date --date="-1 day" +"%Y-%m-%d"`
yes y | rm -r "$backup_dir/signal-$rm_date"*.backup

echo "Removing yesterday's Signal Backup"