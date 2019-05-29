#!/bin/sh

kextstat | grep -v com.apple > kexts-kextstat.txt

ls /Library/Extensions/ > kexts-ls.txt
