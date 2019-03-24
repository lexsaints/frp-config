上传可执行文件和配置文件

添加文件执行权限:
	
	chmod 755 frpc myfrpc.ini auto_frpc.sh

启动frpc客户端的方法:
	
	./frpc -c myfrpc.ini

添加定时任务:
	
	crontab -e
	
	添加定时任务:每1分钟执行一次,检查frpc服务是否允许
	
	0-59/1 * * * * /bin/sh `find / -name auto_frpc.sh`

crontab配置文件位置:
	
	vi /var/spool/cron/crontabs/root
	
	或者
	
	vi /var/spool/cron/root
