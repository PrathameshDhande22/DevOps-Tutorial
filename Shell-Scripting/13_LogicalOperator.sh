#!/bin/bash

echo "Check if you are Young to Work"

read -p "Enter Your Age: " age

# Using the And Operator

if [ $age -gt 18 ] && [ $age -lt 50 ]
then
	echo "You are Young and can Work"
else
	echo "Sorr you cannot work"
fi
