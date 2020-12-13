#!/bin/bash

read -p "Enter First Digit: " a
read -p "Enter Second Digit: " b
read -p "Enter Third Digit: " c

echo "Entered Numbers: $a $b $c"

p=$(( a+(b*c) ))
q=$(( (a*b)+c ))
r=$(( c+(a/b) ))
x=$(( a%(b/c) ))


echo "Result UC2 is" $p
echo "Result UC3 is" $q
echo "Result UC4 is" $r
echo "Result UC5 is" $x

declare -A res

res[0]=$p
res[1]=$q
res[2]=$r
res[3]=$x

arr[((count++))]=${res[0]}
arr[((count++))]=${res[1]}
arr[((count++))]=${res[2]}
arr[((count++))]=${res[3]}

echo "Computed Results in array :" ${arr[@]}
