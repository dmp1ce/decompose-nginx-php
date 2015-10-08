FROM php:fpm
MAINTAINER David Parrish <daveparrish@tutanota.com>

# Use the default php.ini depending on $environment.
RUN cp /usr/src/php/php.ini-{{PROJECT_ENVIRONMENT}} /usr/local/etc/php/php.ini

# Set working directory
WORKDIR /srv/http/source
