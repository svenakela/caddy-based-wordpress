# Caddy V2 Bases PHP Cloud for Wordpress
(or anything else actually)

Running Caddy 2.7.5 Alpine.

[Caddyserver](https://caddyserver.com/) is a compact but secure and very powerful web/proxy server with automatic certificate updates for safe TLS communication.

[Wordpress](https://wordpress.org/) is... Wordpress. 

This is a complete Docker Compose setup to mimic the wiki setup in the [Caddy Server Community Forum](https://caddy.community/t/running-caddy-with-wordpress-php-fpm-with-docker-compose/21526).


## Minimal Effort Local Setup

 - Clone this repository to your local workstation

 - `docker compose up -d`

 - Open up a browser to https://localhost and complete the Wordpress config


To get a full blown setup with Cloudflare Challenge, support for caching and indexing, [check the main branch of this repository](https://github.com/svenakela/caddy-based-wordpress).
