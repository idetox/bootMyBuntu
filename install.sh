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
echo "***** global config GIT *****"
echo ""
cp -i ./.gitignore_global ~/
git config --global core.excludesfile ~/.gitignore_global

echo ""
echo "***** install Docker *****"
echo ""
snap install docker
groupadd docker
usermod -a -G docker $USER
apt install docker-compose
groupadd docker-compose
usermod -a -G docker-compose ${USER}

echo ""
echo "***** install NPM *****"
echo ""
apt install nodejs
apt install npm
npm install -g npm
groupadd npm
usermod -a -G npm ${USER}

echo ""
echo "***** install php7.3 *****"
echo ""

apt update
apt upgrade
apt install software-properties-common
add-apt-repository ppa:ondrej/php
apt update
apt install php${PHP_VERSION}-common -y
apt install php${PHP_VERSION}-mysql -y
apt install php${PHP_VERSION}-xml -y
apt install php${PHP_VERSION}-json -y
apt install php${PHP_VERSION}-xmlrpc -y
apt install php${PHP_VERSION}-curl -y
apt install php${PHP_VERSION}-gd -y
apt install php${PHP_VERSION}-imagick -y
apt install php${PHP_VERSION}-cli -y
apt install php${PHP_VERSION}-dev -y
apt install php${PHP_VERSION}-imap -y
apt install php${PHP_VERSION}-mbstring -y
apt install php${PHP_VERSION}-opcache -y
apt install php${PHP_VERSION}-soap -y
apt install php${PHP_VERSION}-zip -y
apt install php${PHP_VERSION}-intl -y
apt install php${PHP_VERSION}-sqlite3 -y
apt install libzip4
apt install php-xdebug
apt install php-pear

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

apt update
apt autoremove


