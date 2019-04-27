#!/bin/sh

# Obtain numbers from user via arguments passed.
num_1=$1
num_2=$2

# Display option menu.
echo "=================="
echo "    Calculator"
echo "=================="
echo "a) Addition"
echo "b) Subtraction"
echo "c) Multiplication"
echo "d) Division"
echo "e) Modulus"
echo -n "\nEnter letter: "

read option
option=$(echo "$option" | tr "[:upper:]" "[:lower:]")

result=""

# Perform selected arithmetic operation.
case $option in
  "a")
      result=$(echo "scale=10; $num_1 + $num_2" | bc)
      printf "%.2f\n" $result
      ;;
  "b")
      result=$(echo "scale=10; $num_1 - $num_2" | bc)
      printf "%.2f\n" $result
      ;;
  "c")
      result=$(echo "scale=10; $num_1 * $num_2" | bc)
      printf "%.2f\n" $result
      ;;
  "d")
      result=$(echo "scale=10; $num_1 / $num_2" | bc)
      printf "%.2f\n" $result
      ;;
  "e")
      result=$(echo "scale=0; $num_1 % $num_2" | bc)
      printf "%.2f\n" $result
      ;;
    *)
      echo "Error: $option is not a valid option" 
esac 
