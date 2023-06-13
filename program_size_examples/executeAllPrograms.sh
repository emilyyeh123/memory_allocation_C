#!/bin/bash

echo > memorySizes.txt

for i in `seq 1 5`;
do
	gcc 00$i*.c -o program$i
	echo -e "\n" >> memorySizes.txt
	echo 00$i*.c >> memorySizes.txt
	size program$i >> memorySizes.txt
	rm program$i
done

echo -e "\nAll programs executed and output placed into txt file"
