#!/usr/bin/env bash
PHP_VERSION=7.3

cd /
apt install curl
apt install composer
apt-get install python3-pip
snap install vlc
snap install slack
apt install audacious
snap install phpstorm --classic
snap install datagrip --classic

echo ""
echo "***** install Docker *****"
echo ""
snap install docker
groupadd docker
usermod -aG docker ${USER}
apt install docker-compose
groupadd docker-compose
usermod -aG docker-compose ${USER}

echo ""
echo "***** install NPM *****"
echo ""
apt install nodejs
apt install npm
npm install -g npm
npm install -g polymer-cli --unsafe-perm

echo ""
echo "***** install php7.2 *****"
echo ""

apt-get update
apt-get install -y php${PHP_VERSION}O
apt-get install php${PHP_VERSION}-mysql
apt-get install php${PHP_VERSION}-json
apt-get install php${PHP_VERSION}-curl
apt-get install php${PHP_VERSION}-intl
apt-get install php${PHP_VERSION}-mbstring
apt-get install libzip4
apt-get install php${PHP_VERSION}-zip
apt-get install php${PHP_VERSION}-xml
apt-get install php${PHP_VERSION}-dev
apt-get install php-xdebug
apt-get install php-pear

echo ""
echo "***** phpunit *****"
echo ""
wget https://phar.phpunit.de/phpunit-6.5.phar
chmod +x phpunit-6.5.phar
mv phpunit-6.5.phar /usr/local/bin/phpunit
phpunit --version

echo ""
echo "***** php-cs-fixer *****"
echo ""
wget https://cs.sensiolabs.org/download/php-cs-fixer-v2.phar -O php-cs-fixer
chmod a+x php-cs-fixer
mv php-cs-fixer /usr/local/bin/php-cs-fixer

echo ""
echo "***** blackfire *****"
echo ""
wget -q -O - https://packages.blackfire.io/gpg.key | sudo apt-key add -
echo "deb http://packages.blackfire.io/debian any main" | sudo tee /etc/apt/sources.list.d/blackfire.list

echo ""
echo "****** install Apache *****"
echo ""
apt-get install apache2 libapache2-mod-php${PHP_VERSION}

echo ""
echo "****** install Mysql *****"
echo ""
apt-get update
apt-get install mysql-server

echo ""
echo "****** install SMFL *****"
echo ""
apt-get update
apt-get install libsfml-dev
apt-get install cmake-gui

apt-get update
apt-get autoremove


