#!/bin/bash

echo "Enter the Options

1. Get current date and time.
2. Get Current working directory
3. Get the files in the current directory
"

read -p "Enter Option From [1-3]:" choice

# Declaring the Case Statement

case $choice in
	1) 
		echo "Current Date and Time"
		date;;
	2)
		pwd;;
	3)
		ls;;
	*)
		echo "Invalid Input";;
esac
