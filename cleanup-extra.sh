#!/bin/bash

# Remove all log files
rm -rf /var/log/*

# Remove kernel modules we will absolutely never use
export MODULES="drivers/isdn drivers/scsi drivers/bluetooth drivers/gpu drivers/usb sound drivers/input drivers/video drivers/media drivers/net/wireless drivers/infiniband drivers/xen drivers/hid drivers/net/usb drivers/staging drivers/firewire" 
export ROOT="/lib/modules/$(uname -r)/kernel/"
for m in $MODULES
do
	rm -rf "$ROOT$m"
done

