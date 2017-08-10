#!/bin/bash
#给大家讲个故事
#作者：OneT
array_var[0]="从前有座山"
array_var[1]="山里有座庙"
array_var[2]="庙里有个老和尚"
array_var[3]="老和尚给小和尚讲故事"
#声明变量名为关联数组
declare -A base_content
base_content=( [0]='从前有座山' [1]='山里有座庙' [2]='庙里有个老和尚' [3]='老和尚给小和尚讲故事...')
#输出数组索引序号,重定向到空设备（不打印）
echo ${!array_var[@]} >/dev/null
#echo $i   #调试用
#echo "${base_content[0]}"  #调试用
while true
do
echo -e "${base_content[0]}"
#等待2秒
sleep 2
echo -e "${base_content[1]}"
sleep 2
echo -e "${base_content[2]}"
sleep 2
echo -e "${base_content[3]}\n"
sleep 3
done










