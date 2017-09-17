#!/bin/bash
#for i in $(seq 1 10);do
#array_var="test$i"
#echo $array_var
#done
#引入start和end标记脚本运行时间(错误，得不到正确结果)
#$(date +%s)纪元年到此时此刻的秒数
start_ns=$(date +%N)
array_var=(1 2 3 4 5 6)
array_var[0]="test1"
array_var[1]="test2"
echo ${array_var[0]}
index=1
echo -e ${array_var[$index]}
echo ${!array_var[*]}
end_ns=$(date +%N)
times=$(($end_ns-$start_ns))
times_rel=`echo "sclae=6;$times/1000000000" | bc`
echo $time_rel


