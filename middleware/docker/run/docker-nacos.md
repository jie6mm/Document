<details>
<summary>文章概要:</summary>
<pre hidden>
information:
    author: jie6mm
    title: docker-nacos-run
    desc:
    type: docker/nacos
    tags:
        - docker
        - nacos
    series: docker-run
    date: 2021-06-01 14:38:00
</pre>
</details>

# docker-nacos-run

## docker pull
    
```shell
docker pull nacos/nacos-server:{tag}
```

* tag-example
    * v2.0.3

    
## docker run
```shell
docker run -d \
--name {name} \
--restart always \
-p {prot}:8848 \
-v /etc/localtime:/etc/localtime:ro \
-v /etc/timezone/timezone:/etc/timezone:ro \
-e MODE=standalone \
nacos/nacos-server:{tag}
```

```shell
docker cp {name}:/home/nacos/conf {host-path}
```

```shell
docker run -d \
--name {name} \
--restart always \
-p {prot}:8848 \
-v {host-path}:/home/nacos/conf \
-v /etc/localtime:/etc/localtime:ro \
-v /etc/timezone/timezone:/etc/timezone:ro \
-e MODE=standalone \
nacos/nacos-server:{tag}
```

## -e 参考(最底部)
* -e MODE=standalone \
* cluster/standalone default cluster
* [https://hub.docker.com/r/nacos/nacos-server](https://hub.docker.com/r/nacos/nacos-server)
