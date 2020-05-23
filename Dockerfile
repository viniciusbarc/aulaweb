FROM debian:10

RUN apt-get update && \ 
apt-get install apache2 php php-mysql -y && \
rm /var/www/html/index.html

COPY . /var/www/html/

RUN mv /var/www/html/script.sh /root/ && \
chmod +x /root/script.sh && \
rm /var/www/html/banco.sql && \
rm /var/www/html/Dockerfile && \
rm /var/www/html/docker-compose.yml && \
rm -rf /var/www/html/.git

EXPOSE 80/tcp

CMD ["/root/script.sh"]
