#!/bin/bash

echo "--- Simple Interest Calculator ---"

# Prompt for user input
read -p "Enter the Principal amount (P): " principal
read -p "Enter the annual Interest Rate (r) in percentage: " rate
read -p "Enter the Time period (t) in years: " time

# The Simple Interest formula is: (P * r * t) / 100
# We use 'bc -l' for floating point math
# 'scale=2' limits the output to 2 decimal places
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc -l)

# Calculate the final total amount
total=$(echo "scale=2; $principal + $interest" | bc -l)

echo "----------------------------------"
echo "Interest Earned: $interest"
echo "Total Amount (Principal + Interest): $total"
echo "----------------------------------"
