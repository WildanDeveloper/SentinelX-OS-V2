#!/bin/bash

# Set the name of the ISO file
ISO_NAME="bootable_image.iso"

# Set the output directory for the ISO
OUTPUT_DIR="/path/to/output"

# Create the output directory if it doesn't exist
mkdir -p $OUTPUT_DIR

# Install necessary packages (if not already installed)
sudo apt-get install -y grub2 xorriso

# Create a temporary directory for ISO content
TEMP_DIR=$(mktemp -d)

# Copy the kernel and initramfs to the temporary directory
cp /boot/vmlinuz-* $TEMP_DIR/kernel
cp /boot/initrd.img-* $TEMP_DIR/initramfs

# Create the GRUB configuration
cat << EOF > $TEMP_DIR/grub.cfg
set timeout=5
set default=0

menuentry "Boot Linux" {
    linux /kernel
    initrd /initramfs
}
EOF

# Create the ISO image using grub-mkrescue and xorriso
xorriso -as mkisofs -r -V "Bootable ISO" -cache-inodes -J -l -o $OUTPUT_DIR/$ISO_NAME $TEMP_DIR

# Clean up temporary files
rm -rf $TEMP_DIR

echo "ISO image created at $OUTPUT_DIR/$ISO_NAME"