FROM php:8.3-apache

ARG DEBIAN_FRONTEND=noninteractive

RUN docker-php-ext-install mysqli

RUN apt update && apt install -y \
    libzip-dev \
    zlib1g-dev \
    cmatrix \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install zip

RUN a2enmod rewrite
