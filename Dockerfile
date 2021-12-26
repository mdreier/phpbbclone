FROM php:7.4
# Install prerequisites
RUN apt-get update && apt-get install -y libicu-dev git \
  && docker-php-ext-install pdo pdo_mysql intl dba \
  && pear install channel://pear.php.net/HTML_BBCodeParser2-0.1.0
# Install phpbb3-static
WORKDIR /work
RUN git clone https://github.com/automaciej/phpbb3-static.git . && mkdir static
# Copy the configuration file
COPY config.php .


