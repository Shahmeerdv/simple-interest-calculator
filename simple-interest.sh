 
#!/bin/bash
# This script calculates simple interest given principal,
# annual rate of interest and time period in years.

# Do not use this in production. Sample purpose only.

# Author: Shahmeer
# Additional Authors:
# shahmeerdv

# Input:
# p, principal amount
# t, time period in years
# r, annual rate of interest

echo "----------------------------------------"
echo "        Simple Interest Calculator      "
echo "----------------------------------------"

# Read Principal Amount
read -p "Enter the principal amount: " p

# Read Rate of Interest
read -p "Enter the annual rate of interest (as a %): " r

# Read Time Period
read -p "Enter the time period in years: " t

# Perform the calculation
# Using 'bc' for floating-point math support in Bash
interest=$(echo "scale=2; $p * $r * $t / 100" | bc)
total=$(echo "scale=2; $p + $interest" | bc)

echo "----------------------------------------"
echo "Results:"
echo "Simple Interest accrued: $interest"
echo "Total Accumulated Amount: $total"
echo "----------------------------------------"