#!/bin/bash

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer
composer --version
sleep 2
cd /var/www/
sudo rm -R html

sudo git clone https://github.com/emerson122/implementacion-systemhtours.git
sudo mv implementacion-systemhtours html
sudo chown -R www-data:www-data html

sudo chown -R $USER:root /var/www
cd html
composer install
sudo touch .env
sudo nano .env
sudo mv server.php index.php

sudo php artisan key:generate
cd ..
sudo chmod -R 755 html
cd html
sudo chmod -R 777 storage
sudo a2enmod rewrite
sudo nano /etc/apache2/apache2.conf
