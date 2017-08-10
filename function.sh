#!/bin/bash
#简单函数功能的实现
#作者：OneT
:<<!
function frame()
{ 
echo hello world
}
frame
!

frame()
{
echo $1	  #第一个参数
echo -e "---------萌萌哒分割线---------"
echo -e "$@" #"$@"被扩展成"$1""$2""$3""$4""$5"
for i in "$@";do
echo $i
done
echo -e "---------萌萌哒分割线---------"
echo -e "$*" #"$*"被扩展成"$1 $2 $3 $4 $5"
for m in "$*";do
echo $m
done
return 0
}
frame 1 2 3 4 5
