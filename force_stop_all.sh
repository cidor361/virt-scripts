#!/bin/bash

force_stop_all() {
for x in $(virsh list --all --name); do virsh -t destroy $x; done
}

force_stop_all