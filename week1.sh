#!/bin/bash

echo "Performance stats for $USER"

count=`ps -ef | wc -l`

echo "The number of prcesses running is $count"

echo "$1 is the limit"

if [ "$count" -gt "$1" ] 
then
echo "limit is exceeded"
fi
