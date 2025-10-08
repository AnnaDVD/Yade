FROM php:8.2-apache

# Установка зависимостей
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Копируем файлы WordPress в контейнер
COPY . /var/www/html/

# Устанавливаем права
RUN chown -R www-data:www-data /var/www/html

# Открываем порт 80
EXPOSE 80

# Запуск Apache
CMD ["apache2-foreground"]
