#!/bin/bash
a2enmod rewrite
cp /opt/peh/defaults/apache-app.conf /etc/apache2/sites-available/app.conf
a2dissite 000-default
a2ensite app
