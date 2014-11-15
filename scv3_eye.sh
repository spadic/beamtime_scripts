#!/bin/bash

red='\e[0;31m'
NC='\e[0m'
node=localhost:9750

for i in 0 1 2 3 4 5
do
cliclient $node dlm 0 15
cliclient $node dlm 0 15

A00[$i]=`cliclient $node read 0x8000 0x2f0030 | awk '{print $6}' | sed s/\)//`
A01[$i]=`cliclient $node read 0x8000 0x2f0038 | awk '{print $6}' | sed s/\)//`

A10[$i]=`cliclient $node read 0x8000 0x2f0050 | awk '{print $6}' | sed s/\)//`
A11[$i]=`cliclient $node read 0x8000 0x2f0058 | awk '{print $6}' | sed s/\)//`

A20[$i]=`cliclient $node read 0x8000 0x2f0070 | awk '{print $6}' | sed s/\)//`
A21[$i]=`cliclient $node read 0x8000 0x2f0078 | awk '{print $6}' | sed s/\)//`

done

echo -e "RX Eye Width FE0 ${A00[*]}"
echo -e "RX Eye Width FE0 ${A01[*]}\n"
echo -e "RX Eye Width FE1 ${A10[*]}"
echo -e "RX Eye Width FE1 ${A11[*]}\n"
echo -e "RX Eye Width FE2 ${A20[*]}"
echo -e "RX Eye Width FE2 ${A21[*]}\n"
