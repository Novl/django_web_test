cur_dir=$(pwd)

sudo /etc/init.d/mysql start

mysql -u root -e "create database if not exists t23"
cp -r ./ask/ /home/box/