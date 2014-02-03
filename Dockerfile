MAINTAINER Jeff Dickey jeff@dickeyxxx.com

FROM dickeyxxx/base
RUN apt-get -y install redis
EXPOSE 6379
CMD ["/usr/bin/redis-server"]
