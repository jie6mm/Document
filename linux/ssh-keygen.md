# 免密登录(ssh-keygen)
```shell
# 生成密钥
ssh-keygen -t rsa -C "notes"
# 将公钥copy到指定计算机
ssh-copy-id -i /root/.ssh/id_rsa.pub root@{targetIp}
# 验证
ssh root@{targetIp}
```