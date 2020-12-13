#!/bin/bash

read -p "Enter First Digit: " a
read -p "Enter Second Digit: " b
read -p "Enter Third Digit: " c

q=$(( (a*b)+c ))

echo "Result is: " $q
