#!/bin/bash
#*********************************************
# Author: jie6mm
# Title: document-jenkins.sh
# Description: -
# Create-Time: 2021-06-04 11:42:00
# Update-Time: -
#*********************************************
echo "document-jenkins.sh开始执行"

#chmod a+x .deployment/gitbook-docker-restart.sh

ssh root@192.168.50.210 "rm -rf /home/root/app/gitbook/gitbook/.deployment/*"

ssh root@192.168.50.210 "rm -rf /home/root/app/gitbook/gitbook/.gitbook.yaml"

scp -rp ./.deployment root@192.168.50.210:/home/root/app/gitbook/gitbook

scp -rp ./.gitbook.yaml root@192.168.50.210:/home/root/app/gitbook/gitbook

ssh root@192.168.50.210 "sh /home/root/app/gitbook/gitbook/.deployment/gitbook-clean.sh"

scp -rp ./* root@192.168.50.210:/home/root/app/gitbook/gitbook

ssh root@192.168.50.210 "sh /home/root/app/gitbook/gitbook/.deployment/gitbook-docker-restart.sh"