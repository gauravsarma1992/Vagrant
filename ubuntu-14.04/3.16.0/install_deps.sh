#!/bin/bash

sudo add-apt-repository -y 'ppa:brightbox/ruby-ng' && sudo add-apt-repository -y 'ppa:chris-lea/redis-server' && sudo apt-get update

apt-get -f install

apt-get install build-essential git libxml2 libxml2-dev libxslt1.1 libxslt1-dev libssl-dev libffi-dev libmysqlclient-dev mysql-server mysql-client nginx-extras nodejs nodejs-legacy python2.7 python2.7-dev python3.4 python3.4-dev redis-server ruby2.2 ruby2.2-dev supervisor -y

wget https://storage.googleapis.com/golang/go1.9.linux-amd64.tar.gz
mkdir $HOME/golang
tar -xvzf go1.9.linux-amd64.tar.gz -C $HOME/golang

# Docker installation
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce -y
