#!/bin/bash

start_all () {
for x in $(virsh list --all --name); do virsh -t start $x; done
}

start_all
