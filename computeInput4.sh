#!/bin/bash

read -p "Enter First Digit: " a
read -p "Enter Second Digit: " b
read -p "Enter Third Digit: " c

r=$(( c+(a/b) ))

echo "Result is" $r
