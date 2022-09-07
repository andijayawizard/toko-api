FROM php:8.1-apache
# FROM php:8-fpm
copy ./ /var/www/html
expose 80
# FROM php:7.4-fpm
RUN docker-php-ext-install pdo pdo_mysql
# RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli pdo pdo_mysql intl
# RUN apt update && apt upgrade -y

