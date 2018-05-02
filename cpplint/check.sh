#!/bin/bash
folder="/home/ghost/tinyxml"

function readfile ()
{
		for file in `ls $1`
				do
						if [ -d $1"/"$file ]
								then
#如果子文件夹则递归
										readfile $1"/"$file
						else
#否则就能够读取该文件的地址
								echo $1"/"$file
								python2.7 ./cpplint.py  $1"/"$file
#读取该文件的文件名，basename是提取文件名的关键字
										echo `basename $file`
										fi
										done
}

readfile $folder 
