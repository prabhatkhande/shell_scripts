#!/bin/bash

#Simple Calculator Program

function addition() {
	num1=$1
 	num2=$2
	result=$((num1 + num2))	
	echo "Sum of two numbers is : $result"

}
addition $1 $2
