# apache2foreground
# https://github.com/docker-library/php/pull/59/files#r22225236

# Apache gets grumpy about PID files pre-existing
rm -f /var/run/apache2/apache2.pid

exec apachectl -D FOREGROUND
