FROM php:7.0-apache-jessie

LABEL maintainer="elicacio.farias@cesmac.edu.br"
LABEL version="0.0.1"

RUN apt-get update && \
apt-get install -y \
libfreetype6-dev \
libjpeg62-turbo-dev \
libpng-dev \
libicu-dev \
libpq-dev \
libzip-dev \
libxml2-dev \
&& docker-php-ext-install gd soap zip intl pgsql xmlrpc

COPY conf.d/php.ini /usr/local/etc/php

