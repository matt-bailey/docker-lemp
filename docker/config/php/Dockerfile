FROM php:7.0-fpm

RUN apt-get update \
    && apt-get install -y libxml2-dev libmcrypt4 libmcrypt-dev \
        libxslt1-dev libicu-dev libpng12-dev libjpeg-dev \
        zlib1g-dev git build-essential checkinstall libssl-dev \
        libfreetype6-dev libjpeg62-turbo-dev apt-utils cron \
        libfontconfig vim

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/

RUN docker-php-ext-install pdo_mysql \
     mbstring \
     soap \
     mcrypt \
     xsl \
     intl \
     gd \
     zip \
     bcmath

ADD setup-env /usr/local/bin/
ADD php-fpm.conf /usr/local/etc/

COPY ./setup.sh /root
RUN /root/setup.sh

ENTRYPOINT ["/usr/local/bin/setup-env"]
CMD ["php-fpm", "-F"]
