#!/bin/bash

#Make no. of files

echo "How many files do you want to create : "
read $1
for (( num=$2; num<=$3; num++ ));
do
	mkdir "demo$1"
done
