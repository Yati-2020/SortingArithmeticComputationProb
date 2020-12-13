#!/bin/bash

read -p "Enter digit: " a
read -p "Enter digit: " b
read -p "Enter digit: " c

p=$(( a+(b*c) ))

echo "Result: " $p


