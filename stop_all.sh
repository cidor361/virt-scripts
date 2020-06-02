#!/bin/bash

stop_all () {
for x in $(virsh list --all --name); do virsh shutdown $x; done
}

stop_all
