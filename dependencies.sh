#!/bin/bash

echo "installing dependencies..."
apt-get update 
apt-get install -qq -y python-pip libpython-dev
curl -O https://bootstrap.pypa.io/get-pip.py && sudo python get-pip.py
pip install -q awscli==1.11.115 --upgrade # lock version

# jq json parser
apt-get install jq

# ecs-cli
curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
chmod +x /usr/local/bin/ecs-cli

# global npm
npm install -g merge-yaml-cli
npm install -g aws-sdk
npm install -g babel-cli

# permit node user to install global libraries
chown -R node /usr/local/lib/node_modules
chown -R node /usr/local/bin
chown -R node /usr/local/share
