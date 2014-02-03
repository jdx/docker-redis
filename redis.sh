#!/bin/sh
exec chpst -u redis /usr/bin/redis-server >>/var/log/redis.log 2>&1
