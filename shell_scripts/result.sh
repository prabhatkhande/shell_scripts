#!/bin/bash

#Program to show result of given marks
echo "Enter your markes out of 100 : "
read marks

if [[ $marks -ge 60 ]] 
then
	echo "First division"

elif [[ $marks -ge 50 ]] 
then
	echo "Second division"

elif [[ $marks -ge 33 ]] 
then
	echo "third division"

else
	echo "You are fail"
fi
