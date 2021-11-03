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
-p {port}:8848 \
-v /etc/localtime:/etc/localtime:ro \
-v /etc/timezone/timezone:/etc/timezone:ro \
-e MODE= \
-e SPRING_DATASOURCE_PLATFORM= \
-e MYSQL_SERVICE_HOST= \
-e MYSQL_SERVICE_PORT= \
-e MYSQL_SERVICE_DB_NAME= \
-e MYSQL_SERVICE_USER= \
-e MYSQL_SERVICE_PASSWORD= \
nacos/nacos-server:{tag}
```

## -e 参考(最底部)
[https://hub.docker.com/r/nacos/nacos-server](https://hub.docker.com/r/nacos/nacos-server)
