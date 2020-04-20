cur_dir=$(pwd)
sudo pip3 install --upgrade django==2
sudo /etc/init.d/mysql start

mkdir -p /home/box/web/

mysql -u root -e "create database if not exists t23"
cp -r ./ask/ /home/box/web/ask
python3 ~/web/ask/manage.py makemigrations
python3 ~/web/ask/manage.py migrate
