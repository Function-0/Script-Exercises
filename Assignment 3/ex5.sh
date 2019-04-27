#!/bin/sh

echo -n "Enter wind velocity: "
read wind_velocity

wind_velocity_desc=""

# Determine wind velocity description.
if [ $wind_velocity -lt 1 ]
then
  wind_velocity_desc="Calm"
elif [ $wind_velocity -ge 1 -a $wind_velocity -le 3 ]
then
  wind_velocity_desc="Light air"
elif [ $wind_velocity -ge 4 -a $wind_velocity -le 27 ]
then
  wind_velocity_desc="Breeze"
elif [ $wind_velocity -ge 28 -a $wind_velocity -le 47 ] 
then
  wind_velocity_desc="Gale"
elif [ $wind_velocity -ge 48 -a $wind_velocity -le 63 ]
then
  wind_velocity_desc="Storm"
elif [ $wind_velocity -gt 63 ]
then
  wind_velocity_desc="Hurricane"
fi

echo "$wind_velocity_desc"
