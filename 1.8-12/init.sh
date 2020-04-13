cur_dir=$(PWD)
mkdir -p /home/box/web
cd /home/box/web
mkdir -p public
cd public
mkdir -p img
mkdir -p css
mkdir -p js
cd ..
mkdir -p uploads
mkdir -p etc

cd $cur_dir
cp -f nginx.conf /home/box/web/etc/
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf

sudo /etc/init.d/nginx restart