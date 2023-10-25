FROM caddy:2.7.5-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/hairyhenderson/caddy-teapot-module \
    --with github.com/caddy-dns/cloudflare

FROM caddy:2.7.5

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
