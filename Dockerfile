FROM ubuntu:latest
MAINTAINER s2chan <s2chan@gmail.com>

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install apache2 libapache2-mod-php mariadb-server nano php php-apcu php-apcu-bc php-bcmath php-curl php-gd php-intl php-mbstring php-mysql php-sqlite3 
RUN a2enmod rewrite
RUN openssl
RUN a2enmod ssl
RUN rm -rf /var/www
ADD "sites-enabled" "/etc/apache2/sites-enabled"
ADD "apache2.conf" "/etc/apache2/apache2.conf"
EXPOSE 80
