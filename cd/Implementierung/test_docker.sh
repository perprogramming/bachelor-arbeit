#!/bin/bash 

parallel -j 10 -i docker-compose -p chefkoch{} up -d -- `seq -w 0 3`
