#!/bin/bash

set -euxo pipefail

wget -O- https://caddyserver.com/download/linux/amd64?plugins=http.prometheus,http.proxyprotocol | tar -zxvf- caddy
fpm -s dir -t deb -n caddy -v $(date '+%Y%m%d%H%M%S') \
    --deb-systemd=./caddy.service \
    --deb-systemd-restart-after-upgrade \
    --after-install=./create-caddy-user.sh \
    ./caddy=/usr/bin/caddy 
rm caddy
