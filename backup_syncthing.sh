#!/bin/bash

# Script to backup Syncthing files

# Create backups every Sunday
today=`date +"%Y%m%d"`
echo "Backing up Sync data"
cp -r Sync "Sync_backup_$today"
echo "Backing up Signal Backups"
cp -r "Signal Backups" "Sync_backup_$today/"

# Delete backups older than 4 weeks
deldate=`date --date="-4 weeks" +"%Y%m%d"`
echo "Deleting Sync_backup_$deldate"
yes y | rm -r "Sync_backup_$deldate"