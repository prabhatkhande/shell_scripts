#!/bin/bash

#Program to find entered character is vowel or consonent
echo -n "Enter any character : "
read input

if [[ $input == "A" || $input == "a"  ]]; then
	echo "You entered $input and it is Vowel"

elif [[ $input == "E" || $input == "e"  ]]; then
        echo "You entered $input and it is Vowel"

elif [[ $input == "I" || $input == "i"  ]]; then
        echo "You entered $input and it is Vowel"

elif [[ $input == "O" || $input == "o"  ]]; then
        echo "You entered $input and it is Vowel"

elif [[ $input == "U" || $input == "u"  ]]; then
        echo "You entered $input and it is Vowel"

else
	echo "You entered $input and it is Consonent"
fi
