#!/bin/bash
#统计文件打单词出现的次数
if [ $# -ne 1 ];
then
	echo "Usage:$0 filename"
fi

filename=$1

egrep -o "\b[[:alpha:]]+\b" $filename | \
	awk '{count[$0]++}
	END{ printf("%-14s%s\n","word","Count");
		for(word in count){
			printf("%-14s%d\n",word,count[word]);
		}
	}'
