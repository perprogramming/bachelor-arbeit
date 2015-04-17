#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

sudo apt-get update
sudo apt-get install -y varnish

sudo mv /tmp/contents/etc/varnish/default.vcl /etc/varnish/default.vcl

sudo sed -i 's/-a :6081/-a :80/' /etc/default/varnish