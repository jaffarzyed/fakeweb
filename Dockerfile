FROM ubuntu:20.04
RUN apt update -y
# RUN apt install apache2 -y
RUN apt install lighttpd -y
COPY fbweb/ /var/www/html/
ENTRYPOINT service lighttpd start && /bin/bash
