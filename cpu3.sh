#!/bin/bash
echo "sysbench CPU experiment 1: with 35000 prime numbers"
for((i=1;i<6;i++))
do
	echo "Test: "$i
	sysbench --test=cpu --cpu-max-prime=35000 run
done