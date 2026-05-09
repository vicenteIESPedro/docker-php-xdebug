FROM php:8.4-apache

WORKDIR /var/www/html/


# comandos
RUN apt-get update 

# instalo xdebug
RUN pecl install xdebug && docker-php-ext-enable xdebug

#copia configuracion apache
COPY ./config/apache2.conf /etc/apache2
COPY ./config/docker-php-ext-xdebug.ini  /usr/local/etc/php/conf.d/

#copio los archivos iniciales a htdocs
COPY ./inicial-http/index.php .

#RUN apt-get install nano





