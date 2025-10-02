#!/bin/bash
# backup.sh - Backup a directory to /backups with timestamp

SRC_DIR=${1:-/etc}
DEST_DIR="/backups"
DATE=$(date +%F-%H%M%S)

mkdir -p $DEST_DIR
tar -czf $DEST_DIR/backup-$DATE.tar.gz $SRC_DIR

echo "Backup of $SRC_DIR completed at $DEST_DIR/backup-$DATE.tar.gz"
