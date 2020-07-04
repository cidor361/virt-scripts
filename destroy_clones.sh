#!/bin/bash

domen=$1
name=${domen}"-clone"
for x in $(virsh list --all --name);
do
if grep -q "$name" <<< $x ; then
virsh -t destroy $x;
virsh -t undefine $x --remove-all-storage;
fi
done
