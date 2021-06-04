#!/bin/bash
#*********************************************
# Author: jie6mm
# Title: document-jenkins.sh
# Description: -
# Create-Time: 2021-06-04 11:42:00
# Update-Time: -
#*********************************************
gitbook-path=/home/root/app/gitbook/gitbook

echo "document-jenkins.sh开始执行"

scp -rp ./* root@192.168.50.210:${gitbook-path}

ssh root@192.168.50.210 "sh `${gitbook-path}`/.deployment/gitbook-restart.sh"