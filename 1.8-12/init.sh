cd /home/box/web
mkdir -p public
cd public
mkdir -p img
mkdir -p css
mkdir -p js
cd ..
mkdir -p uploads
mkdir -p etc

cp -f nginx.conf /home/box/web/etc/nginx.conf
sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf