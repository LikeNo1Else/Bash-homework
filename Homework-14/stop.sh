#!/bin/bash


while true  
do
read -p "Enter word: " key_word
if [ $key_word == stop ]
then
	break
else
	continue
fi
done


