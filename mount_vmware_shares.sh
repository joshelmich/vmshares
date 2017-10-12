#!/bin/sh
# Note: In the VMWARE player settings for this virtual machine the shared folders need to be enabled
#
# The paths need to be published as shares, for instance
#
# VMWARE_exchange = C:\VMWARE_exchange
# Documents = C:\users\myusername\Documents
# if one of the folders above is renamed the share will not properly (it's pointing to a non-existing path).
#
# fstab examples:
#
# .host:/VMWARE_exchange /media/VMWARE_exchange fuse.vmhgfs-fuse allow_other,uid=1000,gid=1000,auto_unmount,defaults 0 0
# .host:/Documents /media/MyDocuments fuse.vmhgfs-fuse allow_other,uid=1000,gid=1000,auto_unmount,defaults 0 0
sudo mount -t fuse.vmhgfs-fuse -o allow_other -o auto_unmount -o uid=1000 -o gid=1000 .host:/VMWARE_exchange /media/VMWARE_exchange
sudo mount -t fuse.vmhgfs-fuse -o allow_other -o auto_unmount -o uid=1000 -o gid=1000 .host:/Documents /media/MyDocuments
