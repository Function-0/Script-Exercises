#!/bin/sh

months="January February March April May June July August September October November December"
month_num=1

# Display month names. 
for month in $months
do
  echo "$month_num $month"
  month_num=`expr $month_num + 1`
done
