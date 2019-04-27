#!/bin/sh

is_quit_requested=false

while [ $is_quit_requested = false ]
do
  # Display GUI. 
  echo "==========================================================="
  echo "                      Math Operations"
  echo "==========================================================="
  echo "Please enter your choice:"
  echo "1. Area and Perimeter of a trapezoid"
  echo "(Area = (1 / 2)(a + b) * h; Perimeter = a + b + c + d)"
  echo "2. Circumference and Area of a circle"
  echo "(Circumference = 2 * PI * r; Area = PI * r^2)" 
  echo "3. Volume and Area of a sphere"
  echo "(Volume = (4 / 3) * PI * r^3; Surface Area = 4 * PI * r^2)"
  echo "4. EXIT"
  echo -n "\nEnter number: "

  read option
  option=$(echo "$option" | tr "[:upper:]" "[:lower:]")

  # a(1) = arctangent of 1 = PI / 4,
  # therefore 4 * a(1) gives us PI. 
  PI=$(echo "4 * a(1)" | bc -l)

  # Compute math operation selected. 
  case $option in
    1)
      echo -n "Enter \"a\" value: "
      read a
      echo -n "Enter \"b\" value: "
      read b
      echo -n "Enter \"c\" value: "
      read c
      echo -n "Enter \"d\" value: "
      read d
      echo -n "Enter \"h\" value: "
      read h

      area=$(echo "scale=10; (($a + $b) / 2) * $h" | bc)
      perimeter=$(echo "scale=10; $a + $b + $c + $d" | bc)
       
      printf "\nArea of trapezoid: %.2f\n" $area
      printf "Perimeter of trapezoid: %.2f\n" $perimeter 
      ;;
    2)
      echo -n "Enter \"r\" value: "
      read r
     
      circumference=$(echo "scale=10; 2 * $PI * $r" | bc)
      area=$(echo "scale=10; $PI * $r^2" | bc)
      
      printf "\nCircumference of circle: %.2f\n" $circumference
      printf "Area of circle: %.2f\n" $area
     ;;
    3)
      echo -n "Enter \"r\" value: "
      read r
      
      volume=$(echo "scale=10; (4 / 3) * $PI * $r^3" | bc)
      surface_area=$(echo "scale=10; 4 * $PI * $r^2" | bc)
    
      printf "\nVolume of sphere: %.2f\n" $volume 
      printf "Surface area of sphere: %.2f\n" $surface_area 
      ;;
    4)
      is_quit_requested=true;
      ;;
    *)
      echo "Error: $option is not a valid option" 
      ;;
 esac 
done 
