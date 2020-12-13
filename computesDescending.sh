#!/bin/bash

read -p "Enter First Digit: " a
read -p "Enter Second Digit: " b
read -p "Enter Third Digit: " c

echo "Enyered Numbers: $a $b $c"

p=$(( a+(b*c) ))
q=$(( (a*b)+c ))
r=$(( c+(a/b) ))
x=$(( a%b/c ))


echo "The Result is" $p
echo "The Result is" $q
echo "The Result is" $r
echo "The Result is" $x

declare -A res
res[0]=$p
res[1]=$q
res[2]=$r
res[3]=$x

arr[((count++))]=${res[0]}
arr[((count++))]=${res[1]}
arr[((count++))]=${res[2]}
arr[((count++))]=${res[3]}
echo "Computed Results : ${arr[@]}"

echo "Array Is ${arr[@]}"
for ((i = 0; i<4-1; i++))
do

    for((j = 0; j<4-i-1; j++))
    do

        if [ ${arr[$j]} -lt ${arr[$((j+1))]} ]
        then
            temp=${arr[j]}
            arr[j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done
for ((i=0; i<4; i++))
do
	arr[((count2++))]=${arr[i]}
done
echo "Descending order is ${arr[@]}"
