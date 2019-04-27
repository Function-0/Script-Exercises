#!/bin/sh

echo -n "Enter monthly salary: "
read salary

TA=0.15
DA=0.02
HRA=0.10
HST=0.115
RST=0.05

salary=$(echo scale=10\; $salary + \($salary \* $TA\) + \
         \($salary \* $DA\) + \($salary \* $HRA\) | bc)
salary=$(echo "scale=10; $salary - (($salary * $HST) + ($salary * $RST))" | bc)

printf "Your monthly salary after allowances and deductions is: \$%.2f\n" $salary
