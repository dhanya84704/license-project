#!/bin/bash

read -p "Enter principal amount: " principal
read -p "Enter annual rate of interest (%): " rate
read -p "Enter time in years: " time

interest=$(awk "BEGIN {printf \"%.2f\", ($principal * $rate * $time) / 100}")
total=$(awk "BEGIN {printf \"%.2f\", $principal + $interest}")

echo "Simple Interest: $interest"
echo "Total Amount: $total"
