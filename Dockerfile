FROM yiisoftware/yii2-php:7.4-apache

ADD _host-volumes/app /app

RUN composer install

RUN chmod -R 0777 /app/runtime /app/web/assets
