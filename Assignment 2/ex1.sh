#!/bin/sh

read name enroll_num program courses

# Display user's inputted information. 
echo "Your name is: $name"
echo "Your enrollment number is: $enroll_num"
echo "Your program is: $program"
echo "You study the following courses:"

# Display user's courses.
for curr_course in $courses
do
  echo " > $curr_course"
done
