<details>
<summary>文章概要:</summary>
<pre hidden>
information:
    author: jie6mm
    title: docker-jenkins-run
    desc:
    type: linux/docker/jenkins
    tags:
        - linux
        - docker
        - jenkins
    series: docker-run
    date: 2021-06-01 17:21:00
</pre>
</details>

# docker-jenkins-run

## docker pull
    
```shell
docker pull jenkins/jenkins:{tag}
```
    
## docker run

```shell
docker run \
-u root -d \
--name {name} \
--restart=always \
-p {port}:8080 \
-p {port}:50000 \
-v {jenkins-path}:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock \
--env JAVA_OPTS=-Dhudson.security.csrf.GlobalCrumbIssuerConfiguration.DISABLE_CSRF_PROTECTION=true \
jenkins/jenkins:{tag}
```
