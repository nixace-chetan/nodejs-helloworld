#!/bin/bash

yum  update -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

/bin/bash ~/.nvm/nvm.sh

nvm install 4.4.5

node -e "console.log('Running Node.js ' + process.version)"

npm install pm2 -g

pm2 update

export app_root=/usr/cddemo

if [ -d "$app_root" ];then
  rm -rf /usr/cddemo
  mkdir -p /usr/cddemo
else
  mkdir -p /usr/cddemo
fi
