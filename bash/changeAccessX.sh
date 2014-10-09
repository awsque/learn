#!/bin/bash
#改变当前目录（不包括子目录）的文件权限为可执行
oldIFS=$IFS
IFS=$'\n'
for file in `find . -maxdepth 1 -type f`
do
	chmod a+x ${file}
done
IFS=$oldIFS
