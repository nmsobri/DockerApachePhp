FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

MAINTAINER Sobri Kamal <normohdsobri@aemulus.com>

RUN apt-get update && apt-get install -y locales && locale-gen en_US.UTF-8

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get update

RUN apt-get install -y software-properties-common python-software-properties

RUN add-apt-repository ppa:ondrej/php

RUN add-apt-repository ppa:ondrej/apache2

RUN apt-get update

RUN apt-get install -y zip unzip php7.2

RUN apt-get install -y php-curl php-mysql php-pgsql php-mongodb php-sqlite3 php-bcmath php-mcrypt php-zip

RUN apt-get install -y apache2

RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer

RUN apt-get install -y git
