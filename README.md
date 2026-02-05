# SentinelX OS V2

## Overview
SentinelX OS V2 is a minimal operating system designed for custom use-cases. This lightweight OS includes basic drivers, boot scripts, and tools to create a functional, bootable operating system ISO.

### Features
- Custom kernel with minimal drivers for network and storage support.
- Configurable GRUB bootloader with initramfs.
- Basic debug logging during the boot process.

### How to Build
1. Clone the repository:
   ```bash
   git clone https://github.com/WildanDeveloper/SentinelX-OS-V2.git
   cd SentinelX-OS-V2
   ```

2. Build ISO:
   ```bash
   ./tools/create_iso.sh
   ```

3. Test using QEMU:
   ```bash
   ./tools/test_iso.sh
   ```

### Contributing
Feel free to contribute to this project by opening pull requests or creating issues.
