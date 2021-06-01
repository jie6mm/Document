<details>
<summary>文章概要:</summary>
<pre hidden>
information:
    author: jie6mm
    title: nginx配置及常用命令
    desc:
    type: linux/nginx
    tags:
        - linux
        - nginx
    series: nginx
    date: 2021-06-01 13:51:00
</pre>
</details>

# nginx配置及常用命令

## nginx-configure常用参数

```shell
./configure \
--prefix={nginx-home-path} \
--sbin-path={nginx-home-path}/sbin \
--modules-path={nginx-home-path}/modules \
--conf-path={nginx-home-path}/nginx.conf \
--error-log-path={nginx-logs-path}/error.log \
--http-log-path={nginx-logs-path}/access.log \
--pid-path=/var/run/nginx.pid \
--lock-path=/var/run/nginx.lock \
--http-client-body-temp-path=/var/cache/nginx/client_temp \
--http-proxy-temp-path=/var/cache/nginx/proxy_temp \
--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp \
--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp \
--http-scgi-temp-path=/var/cache/nginx/scgi_temp \
--user=root \
--group=root \
--with-compat \
--with-threads \
--with-http_addition_module \
--with-http_auth_request_module \
--with-http_dav_module \
--with-http_flv_module \
--with-http_gunzip_module \
--with-http_gzip_static_module \
--with-http_mp4_module \
--with-http_random_index_module \
--with-http_realip_module \
--with-http_secure_link_module \
--with-http_slice_module \
--with-http_ssl_module \
--with-http_stub_status_module \
--with-http_sub_module \
--with-http_v2_module \
--with-mail \
--with-mail_ssl_module \
--with-stream \
--with-stream_realip_module \
--with-stream_ssl_module \
--with-stream_ssl_preread_module
```

## nginx-常用命令

......