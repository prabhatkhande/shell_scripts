#!/bin/bash

#Simple Calculator Program

function addition() {
	num1=$1
	num2=$2
	result=$((num1 + num2))		
	echo "Sum of two numbers is : $result"

}

function subtract() {
        num1=$1
        num2=$2
        result=$((num1 - num2))
        echo "Subtraction of two numbers is : $result"

}

function multiply() {
        num1=$1
        num2=$2
        result=$((num1 * num2))
        echo "Multiplication of two numbers is : $result"

}

function divide() {
        num1=$1
        num2=$2
        result=$((num1 / num2))
        echo "Division of two numbers is : $result"

}

operation=$1
num1=$2
num2=$3

case $operation in
	addition) addition $num1 $num2;;
	subtract) subtract $num1 $num2;;
	multiply) multiply $num1 $num2;;
	divide) divide $num1 $num2;;
esac
