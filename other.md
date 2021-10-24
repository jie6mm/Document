[Unit]
Description=nginx - high performance web server
Documentation=http://nginx.org/en/docs/
After=network.target remote-fs.target nss-lookup.target


[Service]
Type=forking
Type=forking
ExecStartPre=/home/root/app/nginx/nginx-1.20.1/objs/nginx -t -c /home/root/app/nginx/nginx-1.20.1/conf/nginx.conf
ExecStart=/home/root/app/nginx/nginx-1.20.1/objs/nginx -c /home/root/app/nginx/nginx-1.20.1/conf/nginx.conf
ExecReload=/home/root/app/nginx/nginx-1.20.1/objs/nginx -s reload
ExecStop=/home/root/app/nginx/nginx-1.20.1/objs/nginx -s stop
PrivateTmp=true

[Install]
WantedBy=multi-user.target


----



[Unit]
Description=frp client
After=network.target
Wants=network.target

[Service]
Type=simple
ExecStart=/home/root/app/frpc/frp_0.37.1_linux_386/frpc -c /home/root/app/frpc/frp_0.37.1_linux_386/frpc.ini
ExecReload=/home/root/app/frpc/frp_0.37.1_linux_386/frpc -c /home/root/app/frpc/frp_0.37.1_linux_386/frpc.ini

[Install]
WantedBy=multi-user.target

---


[Unit]
Description=frp server
After=network.target
Wants=network.target

[Service]
Type=simple
ExecStart=/app/frps/frp_0.37.1_linux_386/frps -c /app/frps/frp_0.37.1_linux_386/frps.ini
ExecReload=/app/frps/frp_0.37.1_linux_386/frps -c /app/frps/frp_0.37.1_linux_386/frps.ini

[Install]
WantedBy=multi-user.target