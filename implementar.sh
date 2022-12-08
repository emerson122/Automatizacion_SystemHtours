#!/bin/bash

echo '      	      .andAHHAbnn.`  '
echo '           .aAHHHAAUUAAHHHAn.   '
echo '          dHP^~"        "~^THb.  '
echo '    .   .AHF                YHA.   .'
echo '    |  .AHHb.              .dHHA.  |'
echo '    |  HHAUAAHAbn      adAHAAUAHA  |'
echo '    I  HF~"_____        ____ ]HHH  I'
echo '   HHI HAPK""~^YUHb  dAHHHHHHHHHH IHH'
echo '   HHI HHHD> .andHH  HHUUP^~YHHHH IHH'
echo '   YUI ]HHP     "~Y  P~"     THH[ IUP'
echo '    "  `HK                   ]HH`  " '
echo '        THAn.  .d.aAAn.b.  .dHHP     '
echo '        ]HHHHAAUP" ~~ "YUAAHHHH[     '
echo '        `HHP^~"  .annn.  "~^YHH`      '
echo '         YHb    ~" "" "~    dHF       '
echo '          "YAb..abdHHbndbndAP"        '
echo '           THHAAb.  .adAHHF           '
echo '            "UHHHHHHHHHHU"            '
echo '              ]HHUUHHHHHH[            ' 
echo '            .adHHb "HHHHHbn.           '
echo '     ..andAAHHHHHHb.AHHHHHHHAAbnn..    ' 
echo '.ndAAHHHHHHUUHHHHHHHHHHUP^~"~^YUHHHAAbn. '
echo '  "~^YUHHP"   "~^YUHHUP"        "^YUP^"  '
echo '       ""         "~~"                  '
echo '                                            '
echo ' ______   ______     ______     __   __     ______     ______     ______     ______  '  
echo '/\__  _\ /\  ___\   /\  ___\   /\ "-.\ \   /\  __ \   /\  == \   /\  __ \   /\__  _\ '
echo '\/_/\ \/ \ \  __\   \ \ \____  \ \ \-.  \  \ \ \/\ \  \ \  __<   \ \ \/\ \  \/_/\ \/ '
echo '   \ \_\  \ \_____\  \ \_____\  \ \_\\"\_\  \ \_____\  \ \_____\  \ \_____\    \ \_\ '
echo '    \/_/   \/_____/   \/_____/   \/_/ \/_/   \/_____/   \/_____/   \/_____/     \/_/ '


echo 'Tiempo de hoy:'
date +"%H:%M:%S"

sleep 2

sudo apt update
sudo apt upgrade
# sudo apt install -y apache2 apache2-utils
systemctl status apache2
sudo systemctl start apache2
sudo systemctl enable apache2
sudo chown www-data:www-data /var/www/html/ -R
sudo apt-get  update
sudo apt install software-properties-common
sudo add-apt-repository ppa:ondrej/php
php --version
sleep 2
sudo apt search php8.1-*

sudo apt install php8.1 libapache2-mod-php php8.1-dev php8.1-zip php8.1-curl php8.1-mbstring php8.1-mysql php8.1-gd php8.1-xml mariadb-server curl unzip
sudo apt install  libapache2-mod-php8.1 php-common  php8.1-opcache php8.1-readline
sudo a2enmod php8.1

sudo systemctl restart apache2
sudo apt install php8.1-common php8.1-cli   php8.1-intl  php8.1-bcmath php8.1-imap   php8.1-pgsql

php -v

sleep 2
sudo systemctl enable apache2
sudo systemctl start apache2
#sudo systemctl status apache2


sudo apt install mariadb-server mariadb-client
sudo systemctl start mariadb
sudo systemctl enable mariadb
systemctl status mariadb
sudo mysql_secure_installation
sudo mariadb -u root