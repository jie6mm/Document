```bash
qm importdisk 100 /var/lib/vz/template/iso/openwrt-21.02.1-2022042919-x86-64-squashfs-combined.img local-lvm

lvs
lvdisplay
lvreduce -L -136.03G /dev/pve/vm-100-disk-0
```
