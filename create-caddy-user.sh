addgroup --system caddy
adduser --system --ingroup caddy caddy
mkdir -p -m 0640 /etc/caddy
mkdir -p -m 0600 /etc/ssl/caddy/sites.d
chown -R caddy /etc/caddy /etc/ssl/caddy
