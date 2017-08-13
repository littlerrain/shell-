#!/usr/bin/expect
#交互式输入自动化，处理动态输入问题，可以通过检查程序运行时的输入需求来提供输入内容
#在输入比较多，容易混淆的情况下使用expect定向输入
#spawn参数指定需要自动化哪一个命令
spawn ./test.sh
#expect提供需要等待的消息
expect "Enter number:" 
#send发送消息  
send "1\n"		 
expect "Enter name:"
send "hello\n"
#指明命令交互结束
expect eof		 

:<<!
#自定义的一个命令
#!/bin/bash
#test.sh
read -p "Enter number:" no
read -p "Enter name:" name
echo You have entered $no,$name
!
#一定要赋予test.sh权限，否则执行错误
