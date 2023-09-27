FROM ubuntu

RUN apt-get update
RUN apt-get install -y nginx

COPY ./index.html /var/www/html
COPY ./assets /var/www/html/assets
COPY ./public /var/www/html/public

EXPOSE 80

CMD ["nginx","-g","daemon off;"]

