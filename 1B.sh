#!/bin/bash

AMOUNT=`wc -l input.txt | cut -d' ' -f1`
MINUSONE=`expr $AMOUNT - 1`
MINUSTWO=`expr $AMOUNT - 2`

lines=`paste <(head input.txt -n $MINUSTWO) <(head input.txt -n $MINUSONE | tail -n $MINUSTWO) <(tail input.txt -n $MINUSTWO) | awk '{print $1+$2+$3;}'`

AMOUNT=`echo $lines | wc -l 

echo $AMOUNT
MINUSONE=`expr $AMOUNT - 1`

paste <(head input.txt -n $MINUSONE) <(tail input.txt -n $MINUSONE) 

#| awk '{if ($2-$1 > 0) print $0;}' 


