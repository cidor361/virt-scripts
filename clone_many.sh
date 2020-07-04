#!/bin/bash

time=$(date +%s)
original=$1
number_of=$2
for (( i=1; i <= number_of; i++ ))
do
virt-clone  --original $original --auto-clone
#virt-sysprep -d m-clone --hostname m-clone
echo "[ "$(($(date +%s)-$time))"s ]"
done
