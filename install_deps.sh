#!/bin/bash

sudo add-apt-repository -y 'ppa:brightbox/ruby-ng' && sudo add-apt-repository -y 'ppa:chris-lea/redis-server' && sudo apt-get update

apt-get -f install

apt-get install build-essential git libxml2 libxml2-dev libxslt1.1 libxslt1-dev libssl-dev libffi-dev libmysqlclient-dev mysql-server mysql-client nginx-extras nodejs nodejs-legacy python2.7 python2.7-dev python3.4 python3.4-dev redis-server ruby2.2 ruby2.2-dev supervisor -y
