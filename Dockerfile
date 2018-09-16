FROM nginx:stable-alpine

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./content /var/www/html

EXPOSE 443

