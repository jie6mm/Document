#!/bin/bash
#*********************************************
# Author: jie6mm
# Title: document-jenkins.sh
# Description: -
# Create-Time: 2021-06-04 11:42:00
# Update-Time: -
#*********************************************
echo "document-jenkins.sh开始执行";

scp -r ./* root@192.168.50.210:/home/root/app/gitbook/document

ssh -Tq root@192.168.50.210

cd /home/root/app/gitbook/document

ls -l