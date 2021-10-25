<details>
<summary>文章概要:</summary>
<pre hidden>
information:
    author: jie6mm
    title: docker-elasticsearch-run
    desc:
    type: docker/elasticsearch
    tags:
        - docker
        - elasticsearch
    series: docker-run
    date: 2021-06-01 14:03:00
</pre>
</details>

# docker-elasticsearch-run

## docker pull

```shell
docker pull elasticsearch:{tag}
```

* tag-example
    * 7.14.2


## single-docker run

```shell
docker run -d \
--restart=always \
--name es-single \
-p 9200:9200 \
-p 9300:9300 \
-v /etc/localtime:/etc/localtime:ro \
-v /etc/timezone/timezone:/etc/timezone:ro \
-e "discovery.type=single-node" \
elasticsearch:{tag}
```