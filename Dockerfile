FROM ubuntu:22.o4
LABEL webapp=v1.5
RUN apt update && \
    apt install -y nginx
COPY index.html /usr/share/nginx/html/
COPY index.html /var/www/html/
EXPOSE 80
CMD ["nginx" , "-g" , "daemon off:"]
