#!/bin/bash

#Simple Calculator Program

function addition() {
	echo -n "Enter first number : "
	read $2
	echo -n "Enter second number : "
	read $3
	result=$(("$2" + "$3"))	
	echo "Sum of two numbers is : $result"

}

function subtract() {
	echo -n "Enter first number : "
        read $2
        echo -n "Enter second number : "
        read $3
        result=$(("$2" - "$3"))
        echo "Subtraction of two numbers is : $result"
}

function multiply() {
        echo -n "Enter first number : "
        read $2
        echo -n "Enter second number : "
        read $3
        result=$(("$2" * "$3"))
        echo "Multiplication of two numbers is : $result"
}

function division() {
        echo -n "Enter first number : "
        read $2
        echo -n "Enter second number : "
        read $3
        result=$(("$2" / "$3"))
        echo "Division of two numbers is : $result"
}

function percent() {
        echo -n "Enter obtained marks : "
        read $2
        echo -n "Enter total marks : "
        read $3
        result=$((100*"$2" / "$3"))
        echo "Percentage of given number is : $result"
}


echo "Which operation do you want to perform -"
	echo "a = For Addition"
        echo "b = For Subtraction"
        echo "c = For Multiplication"
        echo "d = For Division"
        echo "e = For Percentage"
echo -n "Enter your choice : "
read $1
case $1 in
	a)addition;;
	b)subtract;;
	c)multiply;;
	d)division;;
	e)percent;;
esac
