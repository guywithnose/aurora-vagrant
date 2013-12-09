#!/usr/bin/env bash

apt-get update
apt-get install -y apache2 php5 php5-curl php5-xdebug memcached php5-memcache php-pear php5-json php5-dev libcurl4-gnutls-dev git-core make

#Apache Settings
rm /etc/apache2/sites-enabled/*
cp /vagrant/configFiles/vhosts /etc/apache2/sites-enabled/default.conf
cp /vagrant/configFiles/apacheSettings /etc/apache2/conf-enabled/otherSettings.conf
cp /vagrant/configFiles/php5-extra.conf /etc/apache2/mods-enabled/

#PHP Settings
cp /vagrant/configFiles/php.ini /etc/php5/apache2/php.ini
cp /vagrant/configFiles/php.ini /etc/php5/cli/php.ini

#Final steps
a2enmod rewrite
apachectl restart
