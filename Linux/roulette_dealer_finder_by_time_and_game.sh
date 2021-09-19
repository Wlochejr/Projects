#!/bin/bash

cat $1_Dealer_schedule | awk '{print "                  " $a "   " $b}' a=$2 b=$3 | head -1 

cat $1_Dealer_schedule | awk '{print $1, $2 "       "  $a "                 " $b}' a=$2 b=$3 | grep "$4" | grep "$5"
