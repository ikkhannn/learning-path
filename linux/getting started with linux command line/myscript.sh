#!/bin/bash
declare -i number1
declare -i number2
declare -i total

echo "what is your fav number?"
read number1
echo "what number do youu really hate?"
read number2
total=$number1*$number2
echo "aha  they equal to" $total
exit 0
