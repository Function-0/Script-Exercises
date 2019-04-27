#!/bin/sh

echo -n "Enter number of units: "
read units

SURCHARGE=0.25
unit_rate=""

if [ $units -le 50 ]
then
  unit_rate=0.75
elif [ $units -gt 50 -a $units -le 150 ]
then
  unit_rate=1.20
elif [ $units -gt 150 -a $units -le 250 ]
then
  unit_rate=1.50
else
  unit_rate=1.75
fi

bill=$(echo "scale=10; $units * $unit_rate" | bc) 
bill=$(echo "scale=10; $bill + ($bill * $SURCHARGE)" | bc)

printf "Your electricity bill comes to: \$%.2f\n" $bill
