#!/bin/bash

#Show system information

echo "Choose any option of your choice beteen given options :"
echo " a = know the current user"
echo " b = know the current date"
echo " c = know the uptime of system"
echo " d = Last login info"
echo " e = Top CPU Processes"

read choice
case $choice in
	a) echo "Your username is $(whoami)";;
	b) date;;
	c) echo "the uptime of the server is: $(uptime)";;
	d) echo "last logins are: \n$(last -a | head -4)";;
	e) echo -e "\nTop CPU Processes:" && top | head -5;;
	*) echo "Invalid Choice"
esac
