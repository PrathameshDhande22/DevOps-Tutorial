#!/bin/bash

# Declare the Variable as key value pair
declare -A person

# Key Value Pairs in Array
person=([name]="Prathamesh" [age]=23 [lastname]="Dhande")

# Printing the Values
echo "${person[*]}"

# Printing the Specific Values
echo "Age=${person[age]}"

# Updating the Key value
person[age]=24
echo "Age=${person[age]}"

# Deleting the key
unset person[age]
echo "${person[*]}"