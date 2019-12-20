#!/bin/sh

bdmesg | grep kext > kexts-bdmesg.txt

kextstat | grep -v com.apple > kexts-kextstat.txt

ls /Library/Extensions/ > kexts-ls.txt

ls /Volumes/EFI/EFI/CLOVER/drivers64UEFI/ > kexts-drivers64uefi.txt
ls /Volumes/EFI/EFI/CLOVER/drivers64/ > kexts-drivers64.txt

ls /Volumes/EFI/EFI/CLOVER/kexts/Other > kexts-clover-other.txt

ls /Volumes/EFI/EFI/CLOVER/Drivers/UEFI/ > kexts-drivers-uefi-new.txt
