FROM httpd:latest

# Install necessary packages
RUN apt-get update && \
    apt-get install -y \
    mysql-client \
    php \
    php-mysql \
    php-mbstring \
    php-xml \
    php-curl \
    php-zip \
    php-gd \
    php-intl \
    php-soap && \
    rm -rf /var/lib/apt/lists/*

# Copy Moodle files
COPY moodle /usr/local/apache2/htdocs/moodle
COPY moodledata /var/www/moodledata

# Start Apache
CMD ["httpd-foreground"]

