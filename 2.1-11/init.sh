cur_dir=$(pwd)
echo $cur_dir
mkdir -p /home/box/web/{etc,public,uploads}

cp -r ./ask/ /home/box/web/
cp -f nginx.conf /home/box/etc/

sudo ln -sf /home/box/etc/nginx.conf /etc/nginx/sites-enabled/default
#sudo ln -sf /home/box/etc/hello.py /etc/gunicorn.d/hello.py

sudo /etc/init.d/nginx restart
cd ./ask/ && gunicorn myapp & && cd --