#!/bin/bash
#*********************************************
# Author: jie6mm
# Title: document-jenkins.sh
# Description: -
# Create-Time: 2021-06-04 11:42:00
# Update-Time: -
#*********************************************
echo "document-jenkins.sh开始执行"

scp -rp ./* root@192.168.50.210:/home/root/app/gitbook/gitbook

cd ./.deployment || exit

path=$(pwd)

ls -al

sudo chomd a+x gitbook-restart.sh

sudo ssh root@192.168.50.210 "sh `$path`/gitbook-restart.sh"