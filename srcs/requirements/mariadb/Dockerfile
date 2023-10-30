FROM debian:bullseye
RUN apt update -y
RUN apt-get install mariadb-server -y

COPY config/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY config/my.cnf /etc/mysql/

COPY scripts/db_setup.sh /var/local/bin/
RUN chmod +x /var/local/bin/db_setup.sh

CMD [ "./var/local/bin/db_setup.sh"]exit