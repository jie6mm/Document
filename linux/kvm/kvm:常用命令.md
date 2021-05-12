<details>
<summary></summary>
tille: kvm:常用命令
desc:
type: linux/kvm
series: command
date: 2021-05-12 15:43:00
</details>

# kvm:常用命令


## 服务安装及启用

yum安装
```shell
yum install virt-* libvirt qemu-img
```

启用服务
```shell
systemctl start libvirtd

systemctl enable libvirtd
```


## virt

安装一个虚拟机
```shell
virt-install \
--name {vm-name} \
--virt-type kvm \
--os-type generic \
--network bridge=br0,model=virtio \
--vcpus 4 --ram 8192 \
--location {iso-path} \
--disk path={disk-save-path}/system.qcow2,size=512 \
--console pty,target_type=serial \
--graphics vnc,listen=0.0.0.0 \
--autostart \
--accelerate \
--noautoconsole
```

## virsh

列出所有虚拟机
```shell
virsh list --all
```

关闭虚拟机
```shell
virsh shutdown/destroy {vm-name}
```

删除虚拟机，但不会删除硬盘
```shell
virsh undefine {vm-name}
```

查看虚拟机的vnc连接信息
```shell
virsh dumpxml {vm-name} | grep vnc
```

查看虚拟机的mac地址
```shell
virsh dumpxml {vm-name} | grep mac
```

查询虚拟机的ip信息，根据mac地址
```shell
arp -a | grep {vm-mac}
```