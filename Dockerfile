# Используем официальный PHP образ с Apache
FROM php:8.2-apache

# Устанавливаем нужные расширения для WordPress
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Копируем все файлы сайта в контейнер
COPY . /var/www/html/

# Делаем права на папку корректными
RUN chown -R www-data:www-data /var/www/html
