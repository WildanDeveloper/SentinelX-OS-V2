echo "Building SentinelX Kernel..."
mkdir -p build
cd kernel
make ARCH=x86_64 CROSS_COMPILE=x86_64-linux-gnu- O=../build defconfig
make ARCH=x86_64 CROSS_COMPILE=x86_64-linux-gnu- O=../build -j$(nproc)
echo "Build complete! Kernel available in build/arch/x86_64/boot/bzImage"