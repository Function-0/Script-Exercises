#!/bin/sh

# Obtain number from user via an argument passed.
num=$1

num_sign="zero"

# Determine if number is positive, negative, or zero.
if [ $num -gt 0 ]
then
  num_sign="positive"
elif [ $num -lt 0 ]
then
  num_sign="negative"
fi

echo "The number you have entered is: $num_sign"
