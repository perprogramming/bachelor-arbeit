#!/bin/bash

boxes=(
    loadbalancer
    app
    database
    cache
    search
)

root=$( cd "$( dirname "$0" )" && pwd )

for box in ${boxes[*]}; do
    cd $root/machines/$box
    vagrant box remove $box
    packer build packer.json 
    vagrant box add $box vagrant.box
done