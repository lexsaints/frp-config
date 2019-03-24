一.frps服务器端安装方法:
	
	安装frps服务端:
	
	wget --no-check-certificate https://raw.githubusercontent.com/clangcn/onekey-install-shell/master/frps/install-frps.sh -O ./install-frps.sh
	
	chmod 700 ./install-frps.sh
	
	./install-frps.sh install
	
	安装过程中记录下配置的登录密码和默认端口
	
	frps start 启动服务器端
	
二.frpc客户端配置
	
	上传可执行文件和配置文件[此处已编译好,可以直接使用]
	
	添加文件执行权限:
		
		chmod 755 frpc myfrpc.ini auto_frpc.sh

	启动frpc客户端的方法:
		
		./frpc -c myfrpc.ini
		
		在myfrpc.ini配置文件中，配置公网服务器的IP地址及端口和内网的IP及映射端口

######以下为frpc停止自动重启功能######

	添加定时任务:
		
		crontab -e
		
		添加定时任务:每1分钟执行一次,检查frpc服务是否允许
		
		0-59/1 * * * * /bin/sh `find / -name auto_frpc.sh`

	crontab配置文件位置:
		
		vi /var/spool/cron/crontabs/root
		
		或者
		
		vi /var/spool/cron/root