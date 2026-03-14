#!/bin/bash

#Directory to backup
SOURCE="/home/$USER"

#Folder where backups will be stored
DEST="$HOME/backups"

#Get current date for the backup filename
DATE=$(date +%F)

#Create backup directory if does not exists
mkdir -p $DEST

#Create compressed backup
tar -czf $DEST/backup-$DATE.tar.gz $SOURCE

#Confirmation message
echo "Backup Completed: $DEST/backup-$DATE.tar.gz"
