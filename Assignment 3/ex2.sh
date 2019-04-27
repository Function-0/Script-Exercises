#!/bin/sh

is_quit_requested=false

while [ $is_quit_requested = false ]
do
  # Display options menu.
  echo "==========================="
  echo " Car Selection (q to quit)"
  echo "==========================="
  echo "a) Mercedes Benz/BMW" 
  echo "b) Toyota/Honda" 
  echo "c) Kia/Hyundai" 
  echo "d) Lincoln/Buick" 
  echo "e) Chery/Great Wall" 
  echo -n "\nEnter letter: "

  read option
  orig_option=$option
  option=$(echo "$option" | tr "[:upper:]" "[:lower:]") 

  # Display appropriate message based on car selected.
  case $option in    
    "a")
        echo "\nI like German cars\n"
        ;;
    "b")
        echo "\nI like Japan cars\n"
        ;;
    "c")
        echo "\nI like Korean cars\n"
        ;;
    "d")
        echo "\nI like American cars\n"
        ;;
    "e")
        echo "\nI like China cars\n"
        ;;
    "q")
        is_quit_requested=true
        ;; 
      *) 
        echo "\nError: $orig_option is not a valid option\n"
        ;;
  esac
done 
