#!/bin/bash
#将当前目录下打png，jpeg格式打图片重命名
count=1
for img in `find . -maxdepth 1 -name '*.jpeg' -o -name '*.png' -type f`
do
	newimg=image-${count}.${img##*.}
	mv "$img" "$newimg"
	echo 'rename success!!!!'
	let count++
done
