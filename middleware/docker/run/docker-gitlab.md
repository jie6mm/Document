<details>
<summary>文章概要:</summary>
<pre hidden>
information:
    author: jie6mm
    title: docker-gitlab-run
    desc:
    type: docker/gitlab
    tags:
        - docker
        - gitlab
    series: docker-run
    date: 2021-06-01 14:38:00
</pre>
</details>

# docker-gitlab-run

## docker pull
    
```shell
docker pull gitlab/gitlab-ee:{tag}
```

* tag-example
    * 13.12.1-ee.0

    
## docker run

```shell
docker run --detach \
--name {name} \
--restart always \
--publish {port}:443 \
--publish {port}:3800 \
--publish {port}:22 \
-v /etc/localtime:/etc/localtime:ro \
-v /etc/timezone/timezone:/etc/timezone:ro \
--volume {gitlab-path}/config:/etc/gitlab \
--volume {gitlab-path}/logs:/var/log/gitlab \
--volume {gitlab-path}/data:/var/opt/gitlab \
gitlab/gitlab-ee:{tag}
```

## 配置gitlab.rb

vim {gitlab-path}/config/gitlab.rb  
在文件中添加如下配置：
```text
external_url '{access-path}'
gitlab_rails['gitlab_shell_ssh_port'] = {22-mapping-port}
nginx['redirect_http_to_https_port'] = {3800-mapping-port}
nginx['listen_port'] = {3800-mapping-port}
```