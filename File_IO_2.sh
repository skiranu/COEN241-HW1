#!/bin/bash
echo "sysbench File IO experiment 2: with 32 Threads and total file size as 3GB and sequential write"
for((i=1;i<6;i++))
do	
	echo " File IO Test: "$i
	sysbench --num-threads=32 --test=fileio --file-total-size=3G --file-test-mode=seqwr prepare
	sysbench --num-threads=32 --test=fileio --file-total-size=3G --file-test-mode=seqwr run
	sysbench --num-threads=32 --test=fileio --file-total-size=3G --file-test-mode=seqwr cleanup
done
