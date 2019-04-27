#!/bin/sh

# Obtain number from user via arguments passed.
num=$1

sum_digits=0
curr_digit=0
# Determine the sum of the number, i.e., sum of
# the number's digits
while [ $num -gt 0 ]
do
  curr_digit=`expr $num % 10`
  num=`expr $num / 10`
  sum_digits=`expr $sum_digits + $curr_digit`    
done

num=$1
# Determine the reverse of the number, i.e., reverse of
# the number's digits 
reverse_num=$(echo "$num" | rev)

# Output results to user.
echo "Sum of ${num}'s digits: $sum_digits"
echo "Reverse of ${num}'s digits: $reverse_num"
