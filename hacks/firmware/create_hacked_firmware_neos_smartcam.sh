#!/usr/bin/env bash
FIRMWARE_ROOT=$(pwd)/../../firmware_original/Neos_Smartcam/Orig_4.15.2.45/
TMPDIR=./rootfs
OUTFILE=./rootfs.bin
rm -r $TMPDIR $OUTFILE
unsquashfs -d $TMPDIR $FIRMWARE_ROOT/rootfs.bin
cp ./rcfile.sh $TMPDIR/etc/init.d/rcS
mksquashfs $TMPDIR $OUTFILE -b 131072 -comp xz -Xdict-size 100%
./packer.py $FIRMWARE_ROOT/kernel.bin $OUTFILE $FIRMWARE_ROOT/driver.bin $FIRMWARE_ROOT/appfs.bin firmware_hacked.bin
rm -r $TMPDIR $OUTFILE
