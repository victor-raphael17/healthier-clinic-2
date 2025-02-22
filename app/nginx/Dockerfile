FROM nginx:stable-alpine3.19-perl

RUN apk update
RUN apk add tzdata
RUN cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
RUN mkdir /var/www/
RUN mkdir /var/www/html

COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./crudphp /var/www/html

EXPOSE 80
