FROM php:8.3.7RC1-apache-bullseye

# Copy Moodle files
COPY moodle /var/www/html/
COPY moodledata /var/www/moodledata
RUN chmod -R 777 /moodledata
