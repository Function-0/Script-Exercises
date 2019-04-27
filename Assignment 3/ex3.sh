#!/bin/sh

# Display GUI.
echo "========================================"
echo "         Grocery Store Checkout"
echo "========================================"
echo -n "\nEnter the cost of your groceries: "

read initial_cost

COST_REQ=100
tax=0
discount=0

# Determine cost modifier on groceries. 
if [ $initial_cost -lt $COST_REQ ]
then
  tax=0.02
  discount=0.1 
elif [ $initial_cost -ge $COST_REQ ]
then
  tax=0.05
  discount=0.2
fi

# Compute final cost.
initial_cost=$(\
echo "scale=10; $initial_cost - ($initial_cost * $discount)" | bc)

final_cost=$(\
echo "scale=10; $initial_cost + ($initial_cost * $tax)" | bc)

discount=$(echo "$discount * 100" | bc)
tax=$(echo "$tax * 100" | bc)

# Display final cost. 
printf "\nAfter a %.2f%% discount and a %.2f%% tax applied " $discount $tax
printf "your final cost comes to: \$%.2f\n" $final_cost 
