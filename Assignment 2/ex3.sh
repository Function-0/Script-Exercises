#!/bin/sh

# Obtain string values from user via arguments passed. 
string1=$1
string2=$2

# Perform string manipulations on the inputted strings.
for curr_string in $string1 $string2  
do
  echo "\nFor $curr_string:"
  
  if [ -z $curr_string ]
  then
    echo " > if [ -z "$curr_string" ] = true: $curr_string is of zero length"
  else
    echo " > if [ -z $curr_string ] = false: $curr_string is of non-zero length"  
  fi 

  if [ -n $curr_string ]
  then
    echo " > if [ -n $curr_string ] = true: $curr_string is of non-zero length"
  else
    echo " > if [ -n $curr_string ] = false: $curr_string is of zero length"  
  fi

  if [ $curr_string ]
  then
    echo " > if [ $curr_string ] = true: $curr_string is not the empty string"
  else
    echo " > if [ $curr_string ] = false: $curr_string is the empty string"  
  fi 
done

echo "\nFor $string1 and $string2 together:"

if [ $string1 = $string2 ]
then
  echo " > if [ $string1 = $string2 ] = true: $string1 and $string2 are the same string"
else
  echo " > if [ $string1 = $string2 ] = false: $string1 and $string2 are not the same string"
fi

if [ $string1 != $string2 ]
then
  echo " > if [ $string1 != $string2 ] = true: $string1 and $string2 are not the same string"
else
  echo " > if [ $string1 != $string2 ] = false: $string1 and $string2 are the same string"
fi
