#!/bin/sh

is_quit_requested=false

while [ $is_quit_requested = false ]
do
  # Display options menu.
  echo "===================================================="
  echo "               System Command Options"
  echo "===================================================="
  echo "a) Display the files and directories"
  echo "b) Print the date in 24 hour format"
  echo "c) Display the System id"
  echo "d) Display the current working directory"
  echo "e) Print the status of process running on the system"
  echo "q) Quit"
  echo -n "\nEnter letter: "

  read option
  option=$(echo "$option" | tr "[:upper:]" "[:lower:]") 

  # Execute various system commands. 
  case $option in
    "a") echo "`ls -lg`\n";; 
    "b") echo "`date`\n";; 
    "c") echo "`hostid`\n";; 
    "d") echo "`pwd`\n";; 
    "e") echo "`ps`\n";; 
    "q") is_quit_requested=true;; 
      *) echo "Error: $option is not a valid option\n";; 
  esac
done
