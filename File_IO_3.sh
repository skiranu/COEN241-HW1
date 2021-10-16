#!/bin/bash
echo "sysbench File IO experiment 3: with 16 Threads and total file size as 4GB and combined random read/write"
for((i=1;i<6;i++))
do	
	echo " File IO Test: "$i
	sysbench --num-threads=16 --test=fileio --file-total-size=4G --file-test-mode=rndrw prepare
	sysbench --num-threads=16 --test=fileio --file-total-size=4G --file-test-mode=rndrw run
	sysbench --num-threads=16 --test=fileio --file-total-size=4G --file-test-mode=rndrw cleanup

done
