#!/bin/bash

set -euxo pipefail

wget -O- https://caddyserver.com/download/linux/amd64?plugins=http.prometheus,http.proxyprotocol | tar -zxvf- caddy
fpm -s dir -t deb -n caddy -v $(date '+%Y%m%d%H%M%S') ./caddy=/usr/bin/caddy
rm caddy
