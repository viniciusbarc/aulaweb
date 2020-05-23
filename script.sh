#!/bin/bash

sed -i "s/localhost/$MYSQL_HOST/g" /var/www/html/config.php
/usr/sbin/apache2ctl -DFOREGROUND
