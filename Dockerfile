FROM php:8.1-apache
RUN apt-get update && docker-php-ext-install pdo pdo_mysql mysqli && docker-php-ext-enable mysqli pdo

#Copy files to webserver 
COPY . /var/www/html/

#Start services
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

EXPOSE 80
