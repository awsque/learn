#!/bin/bash
filename="$@"
if [ $# -ne 1 ];then
	echo "Usage: $0 filename"
	exit
fi
PID=$(pidof gedit)
filename=${filename[0]}

tail -f $filename --pid $PID
