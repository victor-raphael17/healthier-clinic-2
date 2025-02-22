FROM php:8.3-fpm-alpine3.20

COPY ./crudphp /var/www/html

RUN apk update
RUN apk add tzdata
RUN cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN apk add mysql-client

EXPOSE 9000
