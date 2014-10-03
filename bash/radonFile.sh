#!/bin/bash
#生成指定大小打文件

dd if=/dev/zero of=temp.data bs=1M count=1
