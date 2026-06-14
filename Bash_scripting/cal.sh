#!/bin/bash

# Prompt user for two numbers
read -p "Enter first number: " num1
read -p "Enter second number: " num2

# Perform arithmetic operations
sum=$((num1 + num2))
difference=$((num1 - num2))
product=$((num1 * num2))

# Display results
echo
echo "Results:"
echo "$num1 + $num2 = $sum"
echo "$num1 - $num2 = $difference"
echo "$num1 × $num2 = $product"

# Handle division by zero
if [ "$num2" -eq 0 ]; then
    echo "Division by zero is not allowed."
else
    quotient=$((num1 / num2))
    echo "$num1 ÷ $num2 = $quotient"
fi