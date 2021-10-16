#!/bin/bash
echo "sysbench CPU experiment 1: with 20000 prime numbers"
for((i=1;i<6;i++))
do
	echo "Test: "$i
	sysbench --test=cpu --cpu-max-prime=20000 run
done