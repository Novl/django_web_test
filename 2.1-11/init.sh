cur_dir=$(pwd)
echo $cur_dir
mkdir -p /home/box/web/{etc,public,uploads}
mkdir -p /home/box/etc/

cp -r ./ask/ /home/box/web/
cp -f nginx.conf /home/box/etc/
sudo ln -sf /home/box/etc/nginx.conf /etc/nginx/sites-enabled/default
#sudo ln -sf /home/box/etc/hello.py /etc/gunicorn.d/hello.py

sudo /etc/init.d/nginx restart

#cd ../1.9-11/ && gunicorn -c ./etc/hello.py hello:app &

cd ./ask/ && gunicorn ask.wsgi:application &