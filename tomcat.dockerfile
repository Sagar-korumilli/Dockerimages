FROM ubuntu:20.04
RUN apt-get update && apt-get install -y apache2 && apt-get clean && rm -rf /var/lib/apt/lists/

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_RUN_DIR /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D" , "FOREGROUND"]

COPY index.html \var\www\html\
