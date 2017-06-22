FROM php:fpm

# Install mysqli
RUN docker-php-ext-install mysqli

# Install composer
RUN apt-get update && \
    apt-get install curl nano && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
