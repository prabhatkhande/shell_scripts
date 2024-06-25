#!/bin/bash

#Program to make, delete or rename file
function make_file(){
	echo "Enter the file name do you want to create : "
	read choice
	myFile="$choice"
	if [ -f "$myFile" ]; then
		echo "$myFile exists."
	else
		touch $myFile
	fi

}

function file_delete(){
	ls
	echo "Enter the file name which you want to delete : "
	read choice

	myfile="$choice"

	if [ ! -f $myfile ]; then
        	echo "file not exists"

	elif [ -f $myfile ]; then
   		rm $choice
   		echo "$myfile deleted"
	fi

}

function rename_file() {
    echo "Enter the current file name you want to rename: "
    read current_name

    echo "Enter the new file name: "
    read new_name

    if [ -f "$current_name" ]; then
        if [ -f "$new_name" ]; then
            echo "Error: $new_name already exists."
        else
            mv "$current_name" "$new_name"
            echo "File renamed from $current_name to $new_name."
        fi
    else
        echo "Error: $current_name does not exist."
    fi
}

ls
echo "Which operation do you want to do : "
echo "a = Make a file"
echo "b = delete the file"
echo "c = rename the file"

read option
case $option in
	a) make_file;;
	b) file_delete;;
	c) rename_file;;
esac
