#!/bin/sh

# Obtain student name and ID from arguments passed.
name=$1
id=$2

echo -n "Enter number of marks to be entered: "
read num_marks

course_results=""
marks=""
i=1

# Obtain marks from user.
while [ $i -le $num_marks ]  
do
  echo -n "Enter course $i: "
  read course 
  echo -n "Enter mark for $course: " 
  read mark 

  # Create expression to add marks.
  marks="$marks $mark +"

  # Create string to store output to user. 
  course_results="$course_results\n > ${course}: $mark"

  i=`expr $i + 1` 
done

# Add zero to make grades a vaild arithmetic expression. 
marks="$marks 0"

# Compute mark total and grade.
mark_total=$(echo "scale=10; $marks" | bc)
average=$(echo "scale=10; $mark_total / $num_marks" | bc) 

final_grade=""

# Determine final grade score.
if [ $(echo "$average > 90" | bc) -eq 1 ] && \
   [ $(echo "$average <= 100" | bc) -eq 1 ] 
then
  final_grade="A" 
elif [ $(echo "$average >= 80" | bc) -eq 1 ] && \
     [ $(echo "$average < 90" | bc) -eq 1 ] 
then
  final_grade="B"
elif [ $(echo "$average >= 70" | bc) -eq 1 ] && \
     [ $(echo "$average < 80" | bc) -eq 1 ] 
then
  final_grade="C"
elif [ $(echo "$average >= 60" | bc) -eq 1 ] && \
     [ $(echo "$average < 70" | bc) -eq 1 ] 
then
  final_grade="D"
elif [ $(echo "$average < 60" | bc) -eq 1 ]
then
  final_grade="Fail"
fi

# Display grade results to user.
echo "\nStudent: $name"
echo "Student ID: $id"
echo -n "Score in each course:"
echo "$course_results"
printf "Average of marks: %.2f\n" $average
printf "Sum of marks: %.2f\n" $mark_total
echo "Final grade: $final_grade"
