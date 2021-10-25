# DockerRun

```shell
echo 'Asia/Shanghai' > /etc/timezone/timezone
```

```shell
--restart=always
-v /etc/localtime:/etc/localtime:ro
-v /etc/timezone/timezone:/etc/timezone:ro
```

```shell
echo "export TZ=Asia/Shanghai" >> ~/.bashrc
source ~/.bashrc
```