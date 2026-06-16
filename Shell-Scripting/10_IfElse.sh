#!/bin/bash

# using the If Else Condition
read -p "Enter the Marks:" marks

# using the condition
if [ $marks -gt 40 ]
then 
	echo "You are passed"
	echo "Yes you passed"
else
	echo "you are failed"
fi
echo "Ended Testing the Marks"
