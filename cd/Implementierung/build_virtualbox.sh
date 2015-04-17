#!/bin/bash

boxes=(
    loadbalancer
    app
    database
    cache
    search
)

root=`pwd`

for box in ${boxes[*]}; do
    cd $root/$box
    packer build packer.json 
    vagrant box add $box vagrant.box
done