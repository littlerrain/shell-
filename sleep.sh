#!/bin/bash
#sleep+时间：等待写入的时间
echo -n Count:
tput sc  #保存光标位置
count=0
while true;do
if [ $count -lt 40 ];then
let count++;
sleep 1
tput rc  #恢复光标位置
tput ed  #清空光标之后的内容
echo -n $count
else 
exit 0
fi
done




