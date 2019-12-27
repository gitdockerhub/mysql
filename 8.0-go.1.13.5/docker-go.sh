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
source docker-entrypoint.sh mysqld &

#等待20秒.等mysql服务器启动之后,才执行业务
for sitenu in $(seq 1 20)
do
  #观察mysql的端口是否已经起来了
  mysql_up=$(netstat -tnlpu | grep 3306 | wc-l)
  if [ "$mysql_up" =  "1" ]; then
    ok "mysql 服务启动成功!"
    break ;
  fi
  sleep 1
done
if [ "$mysql_up" !=  "1" ]; then
    error "mysql 服务启动失败[n]"
    exit 1
fi
#启动go语言本身服务
source /root/CMD.sh
