FROM nginx:alpine

ADD videos /usr/videos

ADD nginx.conf /etc/nginx/conf.d/default.conf
