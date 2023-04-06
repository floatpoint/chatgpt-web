FROM nginx:stable-alpine

#COPY  nginx.conf  /etc/nginx/nginx.conf
RUN rm /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]
