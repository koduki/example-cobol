FROM ubuntu
RUN apt-get update -qq && apt-get install -y apache2 open-cobol
RUN mkdir app
WORKDIR app

ADD resources/mime.conf /etc/apache2/mods-enabled/mime.conf
ADD resources/000-default.conf /etc/apache2/sites-enabled/000-default.conf
ADD resources/index.cgi /var/www/html/index.cgi

RUN chmod 705 /var/www/html/index.cgi

RUN a2enmod cgi
RUN /etc/init.d/apache2 restart 

ADD resources/run.sh /usr/local/bin/run.sh
RUN chmod 705 /usr/local/bin/run.sh
CMD "/usr/local/bin/run.sh"
