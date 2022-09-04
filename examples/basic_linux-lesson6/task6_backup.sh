#!/bin/bash

BACKUPS_DIR="/media/data/devel/backups"
BACKUP_FILE="$(date +%F-%H-%M-%S).tar.gz"

if [ ! -d $BACKUPS_DIR ]; then
    mkdir -p "$BACKUPS_DIR"
fi


tar -czf "$BACKUPS_DIR/$BACKUP_FILE" /etc 2>/dev/null
