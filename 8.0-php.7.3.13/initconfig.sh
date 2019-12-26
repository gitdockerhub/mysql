#初始化root账户
MYSQL_ROOT_PASSWORD="123456"
MYSQL_DATABASE="demo"
MYSQL_USER="demo"
MYSQL_PASSWORD="demo"

#输出错误和成功信息的函数,带底色
function error(){ echo  -e "\033[41;36m $1 \033[0m";}
function ok(){ echo  -e "\033[42;30m $1 \033[0m";}