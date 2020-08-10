sudo apt-get install python-software-properties 

# With Ubuntu version <= 16.04, we need to add PPA for PHP7
# sudo add-apt-repository ppa:ondrej/php

sudo apt-get update

sudo apt-get install -y php7.0
# Or 
# sudo apt-get install -y php7.1


# Search for PHP7 modules
# sudo apt-cache search php7-*

# Get php version, e.g: 7.0 | 7.1
PHP_VERSION=$(php -r "echo PHP_MAJOR_VERSION.'.'.PHP_MINOR_VERSION;")

sudo apt-get install php${PHP_VERSION}-mysql php${PHP_VERSION}-curl php${PHP_VERSION}-xml \
php${PHP_VERSION}-mcrypt php${PHP_VERSION}-intl php${PHP_VERSION}-mbstring \
php${PHP_VERSION}-gd php${PHP_VERSION}-zip php${PHP_VERSION}-bcmath php${PHP_VERSION}-soap

# For PHP above version 7.2, remove ```mcrypt```
sudo apt-get install php${PHP_VERSION}-mysql php${PHP_VERSION}-curl php${PHP_VERSION}-xml \
php${PHP_VERSION}-intl php${PHP_VERSION}-mbstring \
php${PHP_VERSION}-gd php${PHP_VERSION}-zip php${PHP_VERSION}-bcmath php${PHP_VERSION}-soap
