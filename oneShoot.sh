#!/bin/sh

# ---------------------------------------------------------------------
#|                          Add repos                                 |
#----------------------------------------------------------------------

#sudo add-apt-repository -y ppa:ondrej/php
#sudo add-apt-repository -y ppa:webupd8team/java

#----------------------------------------------------------------------
#|                          install apps                              |
#----------------------------------------------------------------------
sudo apt-get update
sudo apt-get install -y apache2 \
  php7.1 \
  libapache2-mod-php7.1 \
  php7.1-common \
  php7.1-mbstring \
  php7.1-xmlrpc \
  php7.1-soap \
  php7.1-gd \
  php7.1-xml \
  php7.1-intl \
  php7.1-mysql \
  php7.1-cli \
  php7.1-mcrypt \
  php7.1-zip \
  php7.1-curl \
  php-gettext \
  mysql-server \
  git \
  curl \
  zlib1g-dev \
  build-essential \
  libssl-dev \
  libreadline-dev \
  libyaml-dev \
  libsqlite3-dev \
  sqlite3 \
  libxml2-dev \
  libxslt1-dev \
  #libcurl4-openssl-dev \
  libffi-dev \
  libsdl2-dev \
  g++ \
  libgdk-pixbuf2.0-dev \
  python-pip \
  cmake \
  libx11-dev \
  libxmu-dev \
  libglu1-mesa-dev \
  libgl2ps-dev \
  libxi-dev \
  libzip-dev \
  libpng-dev \
  #libcurl4-gnutls-dev \
  libfontconfig1-dev \
  libglew-dev \
  libssl-dev \
  libgtk-3-dev \
  libglfw3 \
  libglfw3-dev \
  xorg-dev \
  lua5.2 \
  default-jre \
  default-jdk \

#----------------------------------------------------------------------
#|                          install apps with wget                    |
#----------------------------------------------------------------------

#wget -qO- https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
#curl https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
#wget -qO- https://raw.githubsercontent.com/creationix/nvm/v0.330.0/install.sh | bash
#curl -sS https://getcomposer.org/installer -o composer-setup.php

