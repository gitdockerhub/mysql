#!/bin/bash
#初始化root账户
export MYSQL_ROOT_PASSWORD="123456"
export MYSQL_DATABASE="demo"
export MYSQL_USER="demo"
export MYSQL_PASSWORD="demo"

#输出错误和成功信息的函数,带底色
function error(){ echo  -e "\033[41;36m $1 \033[0m";}
function ok(){ echo  -e "\033[42;30m $1 \033[0m";}

#启动mysql服务
docker-entrypoint.sh mysqld &

#启动go语言本身服务
source /root/CMD.sh
