#!/bin/bash
echo "sysbench File IO experiment 1: with 16 Threads and total file size as 3GB"
for((i=1;i<6;i++))
do
	sysbench --num-threads=16 --test=fileio --file-total-size=3G --file-test-mode=rndrw prepare
	sysbench --num-threads=16 --test=fileio --file-total-size=3G --file-test-mode=rndrw run
	sysbench --num-threads=16 --test=fileio --file-total-size=3G --file-test-mode=rndrw cleanup
done
