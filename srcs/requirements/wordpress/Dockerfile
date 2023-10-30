FROM debian:bullseye
RUN apt-get -y update && apt-get -y install wget php-fpm php-mysql sendmail

COPY  ./config/www.conf /etc/php/7.4/fpm/pool.d/

COPY  ./scripts/run.sh /scripts/

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar 
RUN  mv wp-cli.phar /usr/local/bin/wp

CMD ["bash", "/scripts/run.sh"]