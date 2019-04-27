#!/bin/sh

is_quit_requested=false

while [ $is_quit_requested = false ]
do
  # Display options menu.
  echo "=================================================="
  echo "     Centennial College Temperature Converter"
  echo "=================================================="
  echo "Please enter your choice (1 or 2, q to quit):"
  echo "1. Convert temperature from Celsius to Fahrenheit"
  echo "2. Convert temperature from Fahrenheit to Celsius" 
  echo -n  "\nEnter number: "

  read option
  orig_option=$option
  option=$(echo "$option" | tr "[:upper:]" "[:lower:]") 

  # Unicode Hex Code Composition
  # [hold] ctrl + shift, [press] "u",
  # [release] ctrl + shift, [press] "b", [press] "0",
  # [press] space
  TEMP_SYMBOL="°"

  # Execute selected conversion command.  
  case $option in
    1)
      echo -n "Enter Celsius value: "
      read C
      F=$(echo "scale=10; ($C * (9 / 5)) + 32" | bc)
      printf "\n%.2f%sC to Fahreheit is: %.2f%sF\n\n" $C $TEMP_SYMBOL $F $TEMP_SYMBOL   
      ;;
    2)
      echo -n "Enter Fahrenheit value: "
      read F  
      C=$(echo "scale=10; ($F - 32) * (5 / 9)" | bc)
      printf "\n%.2f%sF to Celsius is: %.2f%sC\n\n" $F $TEMP_SYMBOL $C $TEMP_SYMBOL  
      ;;
  "q")
      is_quit_requested=true
      ;;
    *)
      echo "\nError: $orig_option is not a valid option\n"
      ;; 
  esac 
done
