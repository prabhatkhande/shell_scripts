#!/bin/bash

#Program to print the table of given number
echo "Enter a number to print it's table : "
read $1
for (( num=1; num<=10; num++ ));
do
	echo $(($1*num))
done
