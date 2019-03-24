#!/bin/sh
#自动检测frpc是否停止运行,如果停止,重新启动
ps | grep frpc | grep -v vi | grep -v grep
if [ $? -ne 0 ];then
	frpc=`find / -name frpc`
	ini=`find / -name myfrpc.ini`
	$frpc -c $ini
else
	echo "running..."
fi