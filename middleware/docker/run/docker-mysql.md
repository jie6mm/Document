<details>
<summary>文章概要:</summary>
<pre hidden>
information:
    author: jie6mm
    title: docker-mysql-run
    desc:
    type: docker/mysql
    tags:
        - docker
        - mysql
    series: docker-run
    date: 2021-06-01 14:03:00
</pre>
</details>

# docker-mysql-run

## docker pull
    
```shell
docker pull mysql:{tag}
```

* tag-example
    * 8.0.25

    
## docker run

```shell
docker run -d \
--name {name} \
-p {port}:3306 \
--restart=always \
-e MYSQL_ROOT_PASSWORD=123456 \
-v /etc/localtime:/etc/localtime:ro \
-v /etc/timezone/timezone:/etc/timezone:ro \
-v {mysql-path}/logs:/logs \
-v {mysql-path}/data/mysql:/var/lib/mysql \
-v {mysql-path}/conf/my.cnf:/etc/mysql/my.cnf \
mysql:{tag}
```

## my.cnf example
```text
# For explanations see
# http://dev.mysql.com/doc/mysql/en/server-system-variables.html
 
[mysqld]
pid-file        = /var/run/mysqld/mysqld.pid
socket          = /var/run/mysqld/mysqld.sock
datadir         = /var/lib/mysql
secure-file-priv= NULL
# Disabling symbolic-links is recommended to prevent assorted security risks
symbolic-links=0
 
# Custom config should go here
!includedir /etc/mysql/conf.d/
```

## tip
如需挂载my.cnf，则docker run 之前需先确保my.cnf文件已存在{mysql-path}/conf下