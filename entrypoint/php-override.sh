# PHP configuration override
PHPINIDIR=$( php --ini | grep '^Scan' | cut -d: -f2 | sed 's/cli/apache2/' )
if [ -f /etc/php/php-override.ini ]; then
	mv /etc/php/php-override.ini $PHPINIDIR/98-override.ini
fi
PHPOVERRIDEINI=$PHPINIDIR/99-envoverride.ini
echo '' > $PHPOVERRIDEINI
for K in $( compgen -e | grep '^PHP_' ); do
	K_LC=$( echo "$K" | cut -c 5- | tr '[:upper:]' '[:lower:]' )
	# https://unix.stackexchange.com/a/251896
	V=${!K}
	echo "$K_LC = $V" >> $PHPOVERRIDEINI
done
