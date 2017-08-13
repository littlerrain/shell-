#!/bin/bash
#检查某个词是否为系统自带词典中的
word=$1
grep "^$1$" /usr/share/dict/british-english -q  # ^开始 $结束  -q禁止产生任何输出
if [ $? -eq 0 ];then
echo $word is a dictionary word
else
echo $word is not a dictionary word
fi 
