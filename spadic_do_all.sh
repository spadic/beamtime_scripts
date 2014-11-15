#!/bin/bash

if [ ! $# -gt 0 ]
then
    echo "usage: $0 <syscore #>"
    exit
fi

for i in 0 1 2
do
    spadic_reset $1 $i
    spadic_default_config $1 $i
    spadic_csa_ramp $1 $i up
done
