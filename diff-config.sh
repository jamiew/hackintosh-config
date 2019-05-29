#!/bin/sh
# TODO ensure EFI is mounted (and thus config-live.plist works)
diff config-live.plist config.plist
