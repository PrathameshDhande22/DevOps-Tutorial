#!/bin/bash

read -p "Enter Your Age:" age

# Using the Ternary Operator or Conditional Operator

[ $age -ge 18 ] && echo "Adult" || echo "Minor"
