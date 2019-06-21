#!/bin/bash

yum  update -y

curl -sL https://rpm.nodesource.com/setup_6.x | sudo -E bash -

yum install nodejs -y

npm install pm2 -g

pm2 update

export app_root=/usr/cddemo

if [ -d "$app_root" ];then
  rm -rf /usr/cddemo
  mkdir -p /usr/cddemo
else
  mkdir -p /usr/cddemo
fi
