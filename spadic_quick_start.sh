#!/bin/bash

if [ ! $# -gt 1 ]
then
    echo "usage: $0 <syscore #> <spadic #>"
    exit
fi

spadic_reset $1 $2
spadic_default_config $1 $2
spadic_csa_ramp $1 $2 up
