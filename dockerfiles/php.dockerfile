FROM php:7.4-fpm-alpine

RUN addgroup -g 1000 development && adduser -G development -g development -s /bin/sh -D development

RUN mkdir -p /var/www/html

RUN chown development:development /var/www/html

RUN apk --no-cache add mysql-client freetype-dev gmp-dev libjpeg-turbo-dev libpng-dev libzip-dev oniguruma-dev zip

RUN docker-php-ext-configure gd --with-freetype --with-jpeg

RUN docker-php-ext-install pdo pdo_mysql bcmath exif gd gmp mysqli opcache zip

RUN apk add --no-cache \
          chromium \
          nss \
          freetype \
          freetype-dev \
          harfbuzz \
          ca-certificates \
          ttf-freefont \
          nodejs \
          npm \
          yarn

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

RUN yarn add puppeteer@1.19.0

USER development
