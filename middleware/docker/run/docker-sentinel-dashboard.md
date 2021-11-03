```shell
java -Dserver.port=8080 \
-Dcsp.sentinel.dashboard.server=localhost:8080 \
-Dproject.name=sentinel-dashboard \
-Dsentinel.dashboard.auth.username=sentinel \
-Dsentinel.dashboard.auth.password=sentinel \
-jar sentinel-dashboard-1.8.2.jar
```


```shell
FROM centos:centos8
 
MAINTAINER jie6mm "jie6mm@gmail.com"
 
WORKDIR /app/sentinel/dashboard
 
RUN mkdir -p /usr/local/java
ADD jdk-8u311-linux-x64.tar.gz /usr/local/java
 
ENV JAVA_HOME=/usr/local/java/jdk1.8.0_311
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV PATH=$JAVA_HOME/bin:$PATH

ADD sentinel-dashboard-1.8.2.jar /app/sentinel/dashboard/sentinel-dashboard-1.8.2.jar

CMD java -Dserver.port=8080 \
-Dcsp.sentinel.dashboard.server=localhost:8080 \
-Dproject.name=sentinel-dashboard \
-Dsentinel.dashboard.auth.username=sentinel \
-Dsentinel.dashboard.auth.password=sentinel \
-jar /app/sentinel/dashboard/sentinel-dashboard-1.8.2.jar
```

```shell
docker build -t jie6mm/sentinel-dashboard:1.8.2 .
```

```shell
docker run -d \
--name sentinel-dashboard \
--restart always \
-p {port}:8080 \
-v /etc/localtime:/etc/localtime:ro \
-v /etc/timezone/timezone:/etc/timezone:ro \
jie6mm/sentinel-dashboard:1.8.2
```
