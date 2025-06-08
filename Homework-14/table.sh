#!/bin/bash


read -p "Input number: " input_number


for i in 1 2 3 4 5 6 7 8 9 10
do 
	echo "$input_number"*"$i"=$(($i*input_number))

done
