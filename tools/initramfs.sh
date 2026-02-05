#!/bin/bash
# Generate initramfs for SentinelX OS
mkdir -p build/initramfs
cp -a init/init build/initramfs/
busybox --install build/initramfs
find build/initramfs -print0 | cpio --null -ov --format=newc | gzip > build/initramfs.img

echo "Initramfs is built: build/initramfs.img"