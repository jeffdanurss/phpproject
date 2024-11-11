# Usar la imagen oficial de PHP con Apache
FROM php:8.2-apache

# Habilitar mod_rewrite (opcional, si necesitas reescritura de URLs)
RUN a2enmod rewrite

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /var/www/html

# Copiar el archivo index.php dentro del contenedor
COPY index.php /var/www/html/index.php

# Exponer el puerto 80 (por defecto Apache escucha en el puerto 80)
EXPOSE 80

# Comando para mantener Apache ejecutándose en primer plano
CMD ["apache2-foreground"]
