#!/bin/bash

#part 1
#accept a string as a parameter and print it to the console
#printf "Hello, %s!\n" "$1"

#part 3

#printf "Hello %s you were born in %s and your favourite color is %s" "$1" "$2" "$3"

#part 4

if [ $USER == "eaauser" ]; then
read var

if [ -d $HOME/EAA/logs ]; then
	echo "$(date): $var" >> $HOME/EAA/logs/diary.txt
else
mkdir $HOME/EAA/logs
echo "$(date): $var" >> $HOME/EAA/logs/diary.txt
fi
fi
