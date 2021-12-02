#!/bin/bash

AMOUNT=`cat | wc -l | cut -d' ' -f1`
MINUSONE=`expr $AMOUNT - 1`
MINUSTWO=`expr $AMOUNT - 2`

paste <(head input.txt -n $MINUSTWO) <(head input.txt -n $MINUSONE | tail -n $MINUSTWO) <(tail input.txt -n $MINUSTWO) | awk '{print $1+$2+$3;}' | ./1A.sh

