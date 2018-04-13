php app/console cache:clear --env=prod --no-debug

chown -R root:www-data app/cache
chown -R root:www-data app/logs
chown -R root:www-data app/config/parameters.yml
chown -R root:www-data repositorio/pdf/cotizacion
chown -R root:www-data repositorio/pdf/orden
chown -R root:www-data repositorio/pdf/pago
chown -R root:www-data repositorio/imagenes
chmod -R 775 app/cache
chmod -R 775 app/logs
chmod -R 775 app/config/parameters.yml
chmod -R 775 repositorio/pdf/cotizacion
chmod -R 775 repositorio/pdf/orden
chmod -R 775 repositorio/pdf/pago
chmod -R 775 repositorio/imagenes
