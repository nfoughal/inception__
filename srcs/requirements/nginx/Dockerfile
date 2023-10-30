FROM debian:bullseye
RUN apt-get -y update
RUN apt install -y nginx openssl
RUN mkdir -p /var/run/nginx
COPY ./config/default /etc/nginx/sites-enabled/

CMD [ "nginx", "-g", "daemon off;"]
# RUN mkdir -p /etc/nginx/ssl
# RUN openssl req -x509 -nodes \
#     -out /etc/nginx/ssl/cert.crt \
#     -keyout /etc/nginx/ssl/cert.key \
#     -subj "/C=/ST=/L=/O=/OU=/CN="


#self-signed certafica    \ 