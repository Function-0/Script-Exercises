#!/bin/sh

result=0
numbers="1 2 3 4 5 6 7 8 9 10"

# Add the numbers from 0 - 10, and output its result.
for num in $numbers  
do
  result=`expr $result + $num`
done

echo "Adding the natural numbers from 0 - 10 yields: $result" 
