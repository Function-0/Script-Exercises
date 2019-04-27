#!/bin/sh

num_odd=0
num_even=0
numbers="1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20" 

# Determine the number of odd and even numbers from 1 - 20,
# and output results to user.
for num in $numbers 
do
  if [ `expr $num % 2` -eq 0 ]
  then
    num_even=`expr $num_even + 1`
    echo "${num}: is EVEN" 
  else
    num_odd=`expr $num_odd + 1`
    echo "${num}: is ODD" 
  fi
done 

echo "\nRegarding the numbers from 1 - 20."
echo "Number of odd numbers: $num_odd"
echo "Number of even numbers: $num_even"
