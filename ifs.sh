#!/bin/bash
#IFS用法
date="name,sex,age,techang"
IFS=,	#将逗号设为定界符
echo Item:
for item in $date;
do
echo $item
done

