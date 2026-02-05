#!/bin/bash

ISO_FILE="output.iso"

if [ ! -f "$ISO_FILE" ]; then
    echo "ISO file not found! Please build the ISO first."
    exit 1
fi

echo "Starting QEMU to test ISO..."
qemu-system-x86_64 -cdrom "$ISO_FILE" -m 512M -boot d
