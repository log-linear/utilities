#!/bin/sh

# 
# Script to create daily backups of Syncthing folders
# using borg
#

# Set PATH to ensure cron matches default user env
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/media/pi/External/Syncthing/

# Navigate to Syncthing directory
cd /media/pi/External/Syncthing
export BORG_PASSPHRASE=''

# Create backups
today=`date +"%Y%m%d"`
borg create --verbose backup::$today "Default Folder" "Signal Backups"

# Delete backups older than 30 days
deldate=`date --date="-30 days" +"%Y%m%d"`
borg delete backup::$deldate