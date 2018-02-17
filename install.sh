#!/bin/bash

# Install PHP and PHP MySQL Plugin
# sudo apt-get -y install php php-mysql

# Download and install wp-cli
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
sudo chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp

# Download and install robo
wget http://robo.li/robo.phar
sudo chmod +x robo.phar
sudo mv robo.phar /usr/bin/robo
