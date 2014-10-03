#!/bin/bash
#生成目录下的文件类型统计信息

oldIFS=$IFS
IFS=$'\n'
if [ $# -ne  1 ];then
	
	echo "Usage is $0 basepath"
	exit
fi

path=$1

declare -A statarray

for filename in `find $path -type f -print`;
do
	ftype=`file -b ${filename} | cut -d, -f1`
	let statarray["${ftype}"]++
done

echo '====================File type and counts in' "${path}" '============'
for ftype in "${!statarray[@]}";
do
	echo ${ftype} : ${statarray["${ftype}"]}
done

IFS=$oldIFS
