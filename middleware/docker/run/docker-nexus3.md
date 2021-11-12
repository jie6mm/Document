<details>
<summary>文章概要:</summary>
<pre hidden>
information:
    author: jie6mm
    title: docker-nexus3-run
    desc:
    type: docker/nexus3
    tags:
        - docker
        - nexus3
    series: docker-run
    date: 2021-06-02 16:20:00
</pre>
</details>

# docker-nexus3-run

## docker pull

```shell
docker pull sonatype/nexus3:{tag}
```

* tag-example
    * 3.36.0
    
## docker run

```shell
docker run -d \
--restart=always \
-p {port}:8081 \
-p {port}:8082 \
-p {port}:8083 \
--name {name} \
-v /etc/localtime:/etc/localtime:ro \
-v /etc/timezone/timezone:/etc/timezone:ro \
-v {nexus-data}:/nexus-data \
sonatype/nexus3:3.36.0
```

```shell
chmod 777 {nexus-data}
```