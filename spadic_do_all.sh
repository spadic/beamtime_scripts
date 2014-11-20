#!/bin/bash

if [ ! $# -gt 1 ]
then
    echo "usage: $0 <syscore #> <spadic #>"
    echo "needs DLM 11 trigger running"
    exit
fi

spadic_reset $1 $2
spadic_default_config $1 $2
spadic_csa_ramp $1 $2 up
spadic_baseline_adjust $1 $2
spadic_neighbors $1 $2
