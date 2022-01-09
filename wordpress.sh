#!/bin/bash

sudo apt update
sudo apt upgrade

cd /tmp
wget https://wordpress.org/latest.tar.gz

tar -xvzf latest.tar.gz
sudo mv wordpress/ /var/www/html/

sudo chmod 755 -R /var/www/html/wordpress/
sudo chown -R www-data:www-data /var/www/html/wordpress/
#
cd /var/www/html/wordpress/
mv wp-config-sample.php wp-config.php
#
systemctl reload nginx.service
