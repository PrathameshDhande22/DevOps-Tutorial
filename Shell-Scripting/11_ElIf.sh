#!/bin/bash

# Using the ElIf Statement

read -p "Enter the Marks:" marks

# using the multiple if else condition

if [ $marks -gt 80 ]
then
	echo "You passed with Distinction"
	echo "congratulations"
elif [ $marks -gt 50 ]
then 
	echo "You passed with First Class"
else
	echo "You Failed"
fi
