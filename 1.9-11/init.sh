cur_dir=$(pwd)
echo $cur_dir
mkdir -p /home/box/web
mkdir -p /home/box/etc/
cp hello.py /home/box/web
cp -f nginx.conf /home/box/etc/
cp ./etc/hello.py /home/box/etc/
sudo ln -sf /home/box/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/etc/hello.py /etc/gunicorn.d/hello.py

sudo /etc/init.d/nginx restart

gunicorn -c ./etc/hello.py hello:app &