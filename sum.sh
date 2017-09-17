#!/bin/bash
#计算1到任意一个正整数的和
read -p "Enter a number:" m
if [ $m -lt 1 ];then
echo -e "The number which you input must bigger than 1!"
else
sum=0
for i in $( seq 1 $m );do
sum=$i+$sum
done
echo $[$sum]
fi
