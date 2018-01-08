#!/bin/sh

# Update
sudo apt update
sudo apt upgrade -y
sudo apt install software-properties-common
sudo apt install python3-software-properties

# Git
sudo apt install git git-core -y 
sudo apt install gitk gitg

# Tool
sudo apt install curl -y
sudo apt install wget -y
sudo apt install tmux -y

# Vim
sudo apt install vim -y       
curl -sL https://raw.githubusercontent.com/egalpin/apt-vim/master/install.sh | sh
apt-vim install -y https://github.com/scrooloose/nerdtree.git

# Apache
sudo apt-get install apache2 apache2.2-common apache2-utils libapache2-mod-php7.0 php-mysql -y
echo "ServerName localhost" | sudo tee /etc/apache2/conf-available/fqdn.conf
sudo a2enconf fqdn
sudo a2enmod rewrite

# Java
sudo add-apt-repository ppa:webupd8team/java -y 
sudo apt-get update 
sudo apt-get install oracle-java8-installer -y 
sudo apt-get install oracle-java8-set-default -y

# Php
sudo apt-get install -y php7.0
PHP_VERSION=$(php -r "echo PHP_MAJOR_VERSION.'.'.PHP_MINOR_VERSION;")
sudo apt install php${PHP_VERSION}-mysql php${PHP_VERSION}-curl php${PHP_VERSION}-xml \
php${PHP_VERSION}-mcrypt php${PHP_VERSION}-intl php${PHP_VERSION}-mbstring \
php${PHP_VERSION}-gd php${PHP_VERSION}-zip php${PHP_VERSION}-bcmath php${PHP_VERSION}-soap