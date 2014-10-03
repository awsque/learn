#!/bin/bash
#文件比较，交集，差集
if [ ${#@} -eq 2 ];then
	file1=$1;file2=$2
	echo 'comm 比较文件（需要已经排好顺序）' $file1 $file2 '第三列为两个文件相同部分'
	comm "$file1" "$file2"
	echo 'comm one.data two.data -1 -2打印出文件交集部分即只打印第三列'
	comm "$file1" "$file2" -1 -2
	echo '将两个文件不同部分输出到同一列'
	comm "$file1" "$file2" -3 | sed 's/^\t//'
else
	echo param error...need two param
fi
