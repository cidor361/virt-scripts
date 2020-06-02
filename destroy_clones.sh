#!/bin/bash

for x in $(virsh list --all --name);
do
virsh destroy $x;
virsh undefine $x --remove-all-storage;
done