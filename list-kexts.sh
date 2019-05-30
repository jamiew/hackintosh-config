#!/bin/sh

kextstat | grep -v com.apple > kexts-kextstat.txt

ls /Library/Extensions/ > kexts-ls.txt

ls /Volumes/EFI/EFI/CLOVER/drivers64UEFI/ > kexts-drivers64uefi.txt
ls /Volumes/EFI/EFI/CLOVER/drivers64/ > kexts-drivers64.txt
