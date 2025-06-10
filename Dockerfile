FROM php:cli-alpine3.20
ARG DEBIAN_FRONTEND=noninteractive
RUN docker-php-ext-install mysqli
RUN apt update \ apt-get install cmatrix \
    && apt install libzip-dev zlib1g-dev -y \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install zip
RUN a2enmod rewrite

