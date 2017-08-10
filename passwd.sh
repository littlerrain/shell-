#!/bin/bash
#一码无忧：解决密码太多，经常遗忘的问题
#作者：OneT
#时间：2017.08.07
#设置输入用户名的时间，超出时间将自动退出
#想法：建一个函数，指向这个操作
:<<!
# 这种办法并没有实现想要的效果，但有倒计时的功能可以实现
echo -n Countdown...:
echo -e "\nEnter your username:\n"
read nam
tput sc
count=10
while true;do
if [ $count -gt 0 ];then
let count--
sleep 1
tput rc
tput ed
echo -n $count
else
exit 0
fi
done
!
:<<!
#找到一种更简便的方法，缺点是无法显示倒计时功能
i=10
echo -e "you have $i second to Enter your name!"
read -t $i -p "Enter:" name 
#echo $name  #调试用
!
:<<!
#添加一个功能：输入密码时不显示密码
#方法一
echo -e "Enter password: " 
(stty -echo;read password)  #放在子shell里也没用:( 
#echo $password  #验证输入
#缺点：运行完之后连终端也不显示输入了
!
:<<!
#方法二
read -s -p "Enter password:" password
#echo $password  #调试用
!


