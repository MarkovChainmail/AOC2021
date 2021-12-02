#!/bin/bash

AMOUNT=`cat | wc -l | cut -d' ' -f1`
MINUSONE=`expr $AMOUNT - 1`

paste <(head input.txt -n $MINUSONE) <(tail input.txt -n $MINUSONE) | awk '{if ($2-$1 > 0) print $0;}' | wc -l
