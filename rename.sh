#!/bin/bash
#将图片文件名统一重命名成形如pic+count+.jpg的格式
count=1
for img in *.jpg
do
new=pic$count.${img##*.}	# ##执行的是贪婪匹配，能够准确提取出扩展名
mv "$img" "$new" 2>/dev/null
if [ $? -eq 0 ]
then
echo "Renameing $img to $new..."
let count++
fi
done
