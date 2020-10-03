FROM ubuntu:18.04

WORKDIR '/var/www/html/mysite/'

RUN apt update && apt upgrade -y
RUN apt install apache2 python3-pip libapache2-mod-wsgi-py3 -y
RUN pip3 install flask
RUN a2enmod wsgi
RUN rm /etc/apache2/sites-available/000-default.conf
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
COPY 000-default.conf /etc/apache2/sites-available/
COPY . .

RUN chmod 775 /var/www/html/mysite
RUN chown :www-data /var/www/html/mysite
RUN chown -R www-data:www-data /var/www/html/mysite/ 
EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
