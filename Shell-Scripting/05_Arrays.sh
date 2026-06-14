#!/bin/bash

# Declaring the Arrays
myArray=(1 2 Prathamesh "Prathamesh Prashant Dhande")

# Print the Array based on Index
echo "The Index at 3 and 2 are ${myArray[3]} and ${myArray[2]}".

# Print all the Values present in the Array
echo "All the Values in the Array are ${myArray[*]}". 

# Getting the Length of the array
length_array=${#myArray[@]}
echo "The Length of the Array is $length_array".

# Get the Values from the Specific Range
echo "The Values from the Specific Range are ${myArray[@]:1:3}".

# Appending the Values to the Array
myArray+=(5 6 "Hello")
echo "The Values in the Array are ${myArray[*]}"

# Updating the Values in the Array
myArray[1]=3
echo "The Values in the Array after Updating ${myArray[*]}"

# Deleting the Values from the Array
unset myArray[1]
echo "The Values in the Array after Deleting ${myArray[*]}"