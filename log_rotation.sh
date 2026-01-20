#!/bin/bash

LOG_DIR="/var/log/myapp"
BASE_LOG="log.txt"
DATE=$(date +%Y-%m-%d)
RETENTION_DAYS=7

mkdir -p "$LOG_DIR"

if [ -f "$LOG_DIR/$BASE_LOG" ]; then
    mv "$LOG_DIR/$BASE_DIR" "$LOG_DIR/log-$DATE.txt"
fi

touch $LOG_DIR/$BASE_DIR

find "$LOG_DIR" -name "log-*.txt" -mtime +7 -exec rm -f {} \;

echo "Log rotation completed on $(date)" >> "$LOG_DIR/$BASE_LOG"