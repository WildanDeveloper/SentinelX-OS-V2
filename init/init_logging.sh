#!/bin/sh

LOG_FILE="/initramfs.log"

log() {
    echo "$(date -u) - $1" >> $LOG_FILE
}

log "Initramfs is starting..."
# TODO: Add more boot steps and log them here
log "Initramfs setup is complete."
