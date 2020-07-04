#!/bin/bash

domen=$1
virsh -t destroy $domen;
virsh -t undefine $domen --remove-all-storage;
