<details>
<summary>文章概要:</summary>
<pre hidden>
information:
    author: jie6mm
    title: docker-kibana-run
    desc:
    type: docker/kibana
    tags:
        - docker
        - kibana
    series: docker-run
    date: 2021-06-02 16:20:00
</pre>
</details>

# docker-kibana-run

## docker pull
    
```shell
docker pull kibana:{tag}
```

* tag-example
    * 7.14.2

    
## docker run

```shell
docker run -d \
--restart=always \
--log-driver json-file \
--log-opt max-size=100m \
--log-opt max-file=2 \
--name {name} \
-p {port}:5601 \
-v /etc/localtime:/etc/localtime:ro \
-v /etc/timezone/timezone:/etc/timezone:ro \
-v {kibana-path}/config/kibana.yml:/usr/share/kibana/config/kibana.yml \
kibana:{tag}
```

## kibana.yml
kibana.yml配置文件放在宿主机***目录下，内容如下：
```yaml
# Default Kibana configuration for docker target
server.name: kibana
server.host: "0"
# es
elasticsearch.hosts: [ "http://xx.xx.xx.xx:9200" ]
xpack.monitoring.ui.container.elasticsearch.enabled: true
```