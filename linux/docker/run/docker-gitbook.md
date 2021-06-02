<details>
<summary>文章概要:</summary>
<pre hidden>
information:
    author: jie6mm
    title: docker-gitbook-run
    desc:
    type: linux/docker/gitbook
    tags:
        - linux
        - docker
        - gitbook
    series: docker-run
    date: 2021-06-02 16:20:00
</pre>
</details>

# docker-gitbook-run

## docker pull
    
```shell
docker pull fellah/gitbook:{tag}
```

* tag-example
    * 3.2.1

    
## docker run

```shell
docker run -d \
--restart always \
--name {name} \
-p {port}:4000  \
-v {gitbook-path}/gitbook:/srv/gitbook \
-v {gitbook-path}/html:/srv/html \
fellah/gitbook:{tag}
```

## tip
请确保本地的gitbook目录中包含至少README.md和SUMMARY.md两个文件