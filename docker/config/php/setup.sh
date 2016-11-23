#!/bin/bash

# Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# NodeJS
curl -sL https://deb.nodesource.com/setup_6.x | bash -
apt-get install -y nodejs

# Self update npm
npm install -g npm

# Grunt and Bower
npm install -g grunt-cli bower
echo '{ "allow_root": true }' > ~/.bowerrc
