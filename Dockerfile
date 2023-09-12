FROM php:8.1-apache
COPY ./Dentista-mvc /var/www/html/
RUN docker-php-ext-install mysqli pdo pdo_mysql
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]