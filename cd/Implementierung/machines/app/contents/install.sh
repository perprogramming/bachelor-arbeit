#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

sudo apt-get update
sudo apt-get install -y nginx php5 php5-fpm php5-cli php5-mysql supervisor

sudo mv /tmp/contents/etc/supervisor/conf.d/* /etc/supervisor/conf.d
sudo mv /tmp/contents/etc/nginx/sites-enabled/default /etc/nginx/sites-enabled/default
sudo mv /tmp/contents/app /app
