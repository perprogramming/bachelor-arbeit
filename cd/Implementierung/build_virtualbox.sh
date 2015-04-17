#!/bin/bash

boxes=(
    loadbalancer
    app
    database
    cache
    search
)

root=`pwd`

if [ ! -f "$root/machines/ubuntu-14.04.ovf" ]; then
    wget --no-check-certificate -O "$root/machines/ubuntu-14.04.ovf" "https://www.dropbox.com/s/2e6i2aj9b12xws2/ubuntu-14.04.ovf?dl=1"
fi
if [ ! -f "$root/machines/ubuntu-14.04.vmdk" ]; then
    wget --no-check-certificate -O "$root/machines/ubuntu-14.04.vmdk" "https://www.dropbox.com/s/bka6ph38bmcrsg5/ubuntu-14.04.vmdk?dl=1"
fi

for box in ${boxes[*]}; do
    cd $root/machines/$box
    vagrant box remove $box
    packer build packer.json 
    vagrant box add $box vagrant.box
done