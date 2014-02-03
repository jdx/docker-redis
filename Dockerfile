FROM phusion/baseimage
MAINTAINER Jeff Dickey jeff@dickeyxxx.com
EXPOSE 6379

ENV HOME /root
CMD ["/sbin/my_init"]
RUN apt-get -y install redis-server
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN mkdir /etc/service/redis
ADD redis.sh /etc/service/redis/run
