#!/bin/bash

if [ $USER != "eaauser" || $User != "root" ]; then
	echo "Restricted access: looking for eaauser"
else
	echo "Authorized access"
	numProcesses=`ps aux | wc -l`
	numRootProcesses=`ps aux | grep 'root' |wc -l`

	echo $numProcesses - $numRootProcesses

	numNonRootProcesses=`expr $numProcesses - $numRootProcesses`

	echo $numNonRootProcesses

	if [ $numNonRootProcesses -gt $1 ]
	then 
		if [ -d $HOME/EAA/logs ]; then
		echo "Max number of non root processes ($1) has been exceeded on $(date)" >> $HOME/EAA/logs/wk2.log
		else
		mkdir $HOME/EAA/logs
		echo "Max number of non root processes ($1) has been exceeded on $(date)" >> $HOME/EAA/logs/wk2.log
		fi
	fi
fi
