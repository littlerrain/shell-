#!/bin/bash
#调试shell脚本用到的一些命令
for i in $(seq 1 6);do
set -x
echo $i
set +x
done 
echo "Script executed"

:<<!
function DEBUG(){
[ "$_DEBUG" == "on" ] && $@ ||: #把_DEBUG=on传递给脚本，调试信息才会打印出来     
}
for i in $(seq 1 10)
do
DEBUG echo $i
done
!
