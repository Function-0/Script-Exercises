#!/bin/sh

# Obtain numbers from user via arguments passed.
num1=$1
num2=$2
num3=$3

num_largest=$num3
num_smallest=$num3

# Determine largest number.
if [ $num1 -ge $num2 -a $num1 -ge $num3 ]
then
  num_largest=$num1
elif [ $num2 -ge $num1 -a $num2 -ge $num3 ]
then
  num_largest=$num2
fi

# Determine smallest number.
if [ $num1 -le $num2 -a $num1 -le $num3 ]
then
  num_smallest=$num1
elif [ $num2 -le $num1 -a $num2 -le $num3 ]
then
  num_smallest=$num2
fi

# Output results to user.
echo "The largest number is: $num_largest"
echo "The smallest number is: $num_smallest"
