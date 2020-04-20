cur_dir=$(pwd)

sudo /etc/init.d/mysql start

mysql -uroot -e "create database 2-3"
