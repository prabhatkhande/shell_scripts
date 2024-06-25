#!/bin/bash

#Program to create user in linux

read -p "Enter username : " username

echo "You entered $username"

sudo useradd -m $username

echo "New User Added Successfully!"
