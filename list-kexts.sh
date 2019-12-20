#!/bin/sh

dir="kext-debugging"
mkdir -p $dir

bdmesg | grep kext > $dir/kexts-bdmesg.txt

kextstat | grep -v com.apple > $dir/kexts-kextstat.txt

ls /Library/Extensions/ > $dir/kexts-ls.txt

ls /Volumes/EFI/EFI/CLOVER/drivers64UEFI/ > $dir/kexts-drivers64uefi.txt
ls /Volumes/EFI/EFI/CLOVER/drivers64/ > $dir/kexts-drivers64.txt

ls /Volumes/EFI/EFI/CLOVER/kexts/Other > $dir/kexts-clover-other.txt

# Clover seems to have moved frmo CLOVER/drivers64* to this directory
# as of version ???
ls /Volumes/EFI/EFI/CLOVER/Drivers/UEFI/ > $dir/kexts-drivers-uefi-new.txt
