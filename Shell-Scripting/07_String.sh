#!/bin/bash

# String Operations
# Declaring the String
name="Prathamesh Prashant Dhande"

# length of the String
echo "Length=${#name}"

# Upper Case 
echo "UpperCase=${name^^}"

# Lower Case
echo "LowerCase=${name,,}"

# Replace
echo "Replace=${name/Dhande/DH}"

# Slice
echo "Get Character at Index 4=${name:4}"
echo "Get Only first Name ${name:0:10}"
