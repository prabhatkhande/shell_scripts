#!/bin/bash

echo -n "Enter a Number : "
read num1
echo -n "Enter another Number : "
read num2
result = $((num1 + num2))
echo -n "Sum of two numbers is : $result"
